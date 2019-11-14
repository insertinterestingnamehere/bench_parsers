fname = "python.yacc.sx"
with open(fname, 'r') as f:
    lines = f.readlines()
for i, line in enumerate(lines):
    if line[:4] == "($nt":
        if 475 <= int(line[4:]):
            if "    (let-syntax (($$ (λ (_) #'(list ($ 1))))) $$)))" in lines[i + 12]:
                print("match")
                lines[i + 25] = lines[i + 25].replace("$$)))", "#f)))")
                lines[i + 24] = lines[i + 24].replace("$$)))", "#f)))")
            if "    (let-syntax (($$ (λ (_) #'(list ($ 1))))) $$)))" in lines[i + 24]:
                lines[i + 12] = lines[i + 12].replace("$$)))", "#f)))")
with open(fname, 'w') as f:
    f.writelines(lines)
