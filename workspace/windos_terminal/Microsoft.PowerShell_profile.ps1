oh-my-posh init pwsh --config "C:\Users\mdfaria\Documents\dev\workspace\windos_terminal\oh-my-posh themes\kushal.omp.json" | Invoke-Expression

# Só roda o Winfetch se não estiver dentro do VSCode
if (-not ($env:TERM_PROGRAM -eq "vscode")) {
    & winfetch
}
