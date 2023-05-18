import requests
import time

url = "http://www.ua.pt"

# Faz o pedido GET
start_time = time.time()
response = requests.get(url)
end_time = time.time()

# Verifica se o pedido foi bem-sucedido
if response.status_code == 200:
    # Imprime os cabeçalhos da resposta
    print("Cabeçalhos da resposta:")
    for header, value in response.headers.items():
        print(f"{header}: {value}")
    
    # Verifica o tipo de conteúdo
    content_type = response.headers.get('Content-Type')
    if content_type == 'text/html; charset=utf-8':
        # Imprime o conteúdo da página
        print("\nConteúdo da página:")
        print(response.text)
    else:
        print("O tipo de conteúdo não é HTML codificado em UTF-8.")
else:
    print(f"O pedido falhou com código de status: {response.status_code}")

# Imprime o tempo necessário para obter a página
elapsed_time = end_time - start_time
print(f"\nTempo necessário: {elapsed_time} segundos")
