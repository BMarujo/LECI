#STUDENT NAME: Bernardo Marujo
#STUDENT NUMBER: 107322

from tree_search import *

class OrderDelivery(SearchDomain):

    def __init__(self,connections, coordinates):
        self.connections = connections
        self.coordinates = coordinates

    def actions(self,state):
        city = state[0]
        actlist = []
        for (C1,C2,D) in self.connections:
            if (C1==city):
                actlist += [(C1,C2)]
            elif (C2==city):
               actlist += [(C2,C1)]
        return actlist 

    # Calcula o novo estado a partir de um estado e uma ação
    def result(self,state,action):
        (C1,C2) = action
        if C1==state[0]:
            return (C2,)

    # Verifica se o estado atual é o estado objetivo
    def satisfies(self, state, goal):      
        return state[0] == goal

    # Calcula o custo de uma ação em um estado
    def cost(self, state, action):
        C1, C2 = action
        if C1==state:
            for (x1, x2, d) in self.connections:
                if (x1, x2) == action or (x2, x1) == action:
                    return d
                
        return 0
    
    # Custos estimados de chegar de um estado a outro
    def heuristic(self, state, goal):
        # Linha reta entre a cidade atual e a cidade alvo
        current_city = state[0]
        goal_city = goal
        x1, y1 = self.coordinates[current_city]
        x2, y2 = self.coordinates[goal_city]
        distance = ((x1 - x2) ** 2 + (y1 - y2) ** 2) ** 0.5
        return distance
    
    

class MyNode(SearchNode):

    def __init__(self, state, parent, depth=0, cost=0, heuristic=0, eval_value=0):
        super().__init__(state,parent)
        self.depth = depth
        self.cost = cost
        self.heuristic = heuristic
        self.eval = eval_value
        self.children = []
        
    # Adiciona um nó à lista de filhos
    def add_child(self, child_node):
        self.children.append(child_node)



class MyTree(SearchTree):
    
    
    def __init__(self,problem, strategy='breadth',maxsize=None):
        super().__init__(problem,strategy)
        self.maxsize = maxsize
        root = MyNode(problem.initial, None)
        self.open_nodes = [root]
        self.terminals = 1
        self.non_terminals = 0
        self.cost = 0
        
    def astar_add_to_open(self,lnewnodes):
        # Ordena a lista de nós baseado nos valores de eval e depois nos nomes das cidades
        lnewnodes.sort(key=lambda node: (node.eval, node.state[0]))

        if self.open_nodes:
            # Encontra o índice para inserir os nós ordenados mantendo a ordem de prioridade
            index = 0
            while index < len(self.open_nodes) and self.open_nodes[index].eval <= lnewnodes[0].eval:
                index += 1
            # Insere os nós ordenados na posição correta da lista open_nodes
            self.open_nodes[index:index] = lnewnodes
        else:
            # Se a lista open_nodes estiver vazia, simplesmente adiciona os nós ordenados
            self.open_nodes = lnewnodes

    def search2(self):
        while self.open_nodes:
            # Remove o nó na frente da lista de nós abertos
            node = self.open_nodes.pop(0)
            # Verifica se o estado atual é o estado objetivo
            if self.problem.goal_test(node.state):
                # Armazena o nó atual como a solução
                self.solution = node
                self.cost = self.solution.cost
                self.terminals = len(self.open_nodes) + 1
                return self.get_path(node) # Armazena o caminho para o nó atual como a solução

            self.non_terminals += 1
            lnewnodes = []
            for action in self.problem.domain.actions(node.state):
                newstate = self.problem.domain.result(node.state, action)
                # Verifica se o novo estado não está na lista de estados já visitados 
                if newstate not in self.get_path(node):
                    # Cria um novo nó com o novo estado
                    newnode = MyNode(newstate, node, depth=node.depth + 1)
                    # Calcula o custo e a heurística para o novo nó
                    newnode.cost = node.cost + self.problem.domain.cost(node.state, action)
                    newnode.heuristic = self.problem.domain.heuristic(newstate, self.problem.goal)
                    newnode.eval = newnode.cost + newnode.heuristic
                    # Adiciona o novo nó à lista de nós a serem expandidos
                    lnewnodes.append(newnode)
                    # Adiciona o novo nó como filho do nó atual
                    node.add_child(newnode)
            self.manage_memory()
            # Adiciona os novos nós à lista de nós a serem expandidos
            self.add_to_open(lnewnodes)
        return None  # Retorna None se não encontrar uma solução
    
    

    def manage_memory(self):
        # Verifica se a estratégia selecionada é 'A*', maxsize está especificado e o tamanho da árvore excede maxsize
        if self.strategy == 'A*' and self.maxsize is not None and len(self.open_nodes) > self.maxsize:
            marked_for_deletion = set()

            # Ordena a lista de nós baseado nos valores de eval em ordem crescente
            self.open_nodes.sort(key=lambda node: node.eval)

            # Itera sobre os nós em ordem inversa (do maior eval para o menor)
            for i in range(len(self.open_nodes) - 1, -1, -1):
                node = self.open_nodes[i]

                if node not in marked_for_deletion:
                    marked_for_deletion.add(node)

                    # Verifica se todos os irmãos também estão marcados para exclusão
                    all_siblings_marked = True
                    parent = node.parent
                    if parent:
                        for child in parent.children:
                            if child not in marked_for_deletion:
                                all_siblings_marked = False
                                break

                    if all_siblings_marked:
                        # Remove os nós e seus irmãos
                        for child in parent.children:
                            marked_for_deletion.remove(child)
                            self.open_nodes.remove(child)

                        # Atualiza o eval do pai com o menor valor de eval dos filhos removidos
                        parent.eval = min(child.eval for child in parent.children)

            # Se o tamanho da árvore ainda exceder o limite, repita o procedimento
            if len(self.open_nodes) > self.maxsize:
                self.manage_memory()

    # Adiciona novos nós à lista de nós abertos de acordo com a estratégia
    def add_to_open(self, lnewnodes):
        if self.strategy == 'breadth':
            self.open_nodes.extend(lnewnodes)
        elif self.strategy == 'depth':
            self.open_nodes[:0] = lnewnodes
        elif self.strategy == 'A*':
            self.astar_add_to_open(lnewnodes)

        # Adiciona os nós filhos à lista de nós abertos
        children_nodes = [child for node in lnewnodes for child in node.children]
        self.open_nodes.extend(children_nodes)
        
        
def orderdelivery_search(domain, city, targetcities, strategy='breadth', maxsize=None):
    paths = []

    for target_city in targetcities:
        # Cria uma instância do problema com o domínio, cidade inicial e cidade alvo especificadas
        problem = SearchProblem(domain, (city, None), target_city)
        # Cria uma árvore de pesquisa com a estratégia e maxsize especificados
        tree = MyTree(problem, strategy, maxsize)
        # Chama o método search2() para realizar a pesquisa
        result = tree.search2()
        
        paths.append([state[0] for state in result])

    return tree, paths

