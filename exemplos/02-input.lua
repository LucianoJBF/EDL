io.write("Digite seu nome: ")
string = io.read()
io.write("Data de nascimento: ")
nascimento = io.read()
io.write("Nome do seu animal de estimação, se não tiver, digite N: ")
animal = io.read()
io.write("Nome da sua avó: ")
vo = io.read()

file = io.open("pessoa_arquivo.txt", "w")
io.output(file)

if (animal == 'N') then
    io.write("Nome do autor: " ..string.. "\nnascimento: " ..nascimento.. "\nNão possui animal de extimação, infelizmente...\nSua vó se chama: "..vo.."\n" )
else
    io.write("Nome do autor: " ..string.. "\nnascimento: " ..nascimento.. "\nSeu animal se chama: "..animal.."\nSua vó se chama: "..vo.."\n" )
end
io.close(file)







