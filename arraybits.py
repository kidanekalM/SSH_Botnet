string = ("Word Auto key Encryption")
for a in string:
    output = ' '.join(format(x, 'b') for x in bytearray(string, 'utf-8'))
    print(output)