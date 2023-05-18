import sys
import requests

def get_coordinates(address):
    servurl = "https://nominatim.openstreetmap.org/search.php?format=json&q=%s" % address
    response = requests.get(servurl)
    if response.status_code == 200:
        data = response.json()
        if data:
            first_result = data[0]  # Obter o primeiro resultado da lista
            latitude = first_result.get('lat')
            longitude = first_result.get('lon')
            display_name = first_result.get('display_name')

            print(f"Coordenadas: {latitude}, {longitude}")
            print(f"Informação: {display_name}")
        else:
            print("Nenhum resultado encontrado para o endereço fornecido.")
    else:
        print(f"Falha ao obter as coordenadas. Código de status: {response.status_code}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Por favor, forneça o endereço da cidade como argumento de linha de comando.")
    else:
        address = " ".join(sys.argv[1:])  # Concatenar argumentos em um único endereço
        get_coordinates(address)
