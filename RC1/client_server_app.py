import socket

# Server

# Create a socket
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Bind the socket to a port
server_socket.bind(('localhost', 8000))

# Start listening for incoming connections
server_socket.listen()

# Keep track of the total number of payload bytes received from each client
client_byte_counts = {}

while True:
  # Accept an incoming connection
  client_socket, client_address = server_socket.accept()
  print(f"Received connection from {client_address}")

  # Receive the data from the client
  data = client_socket.recv(1024)
  data = data.decode()
  print(f"Received data: {data}")

  # Get the hostname and IP address of the server
  hostname = socket.gethostname()
  ip_address = socket.gethostbyname(hostname)

  # Update the byte count for the client
  client_byte_counts[client_address] = client_byte_counts.get(client_address, 0) + len(data)

  # Calculate the total number of payload bytes received
  total_bytes = sum(client_byte_counts.values())

  # Send the response to the client
  response = f"Hostname: {hostname}\nIP address: {ip_address}\nTotal bytes received: {total_bytes}"
  client_socket.send(response.encode())

  # Close the client socket
  client_socket.close()

# Client

# Create a socket
client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Connect to the server
client_socket.connect(('localhost', 8000))

# Send some data to the server
data = "Hello, server!"
client_socket.send(data.encode())

# Receive the response from the server
response = client_socket.recv(1024)
response = response.decode()
print(response)

# Close the socket
client_socket.close()
