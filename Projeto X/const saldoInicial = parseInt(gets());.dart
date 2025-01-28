const saldoInicial = parseInt(gets());
const resultadoUltimoRound = gets();
const custoItem = parseInt(gets());

function decidirCompraOuEconomizar(saldoInicial, resultadoUltimoRound, custoItem) {
    let novoSaldo;

    // Implementa a lógica para ajustar o saldo de acordo com o resultado do último round
    switch(resultadoUltimoRound) {
        case 'ganhou':
            novoSaldo = saldoInicial + 10;
            break;
        case 'perdeu':
            novoSaldo = saldoInicial - 10;
            break;
        case 'bônus':
            novoSaldo = saldoInicial + 20;
            break;
        default:
            novoSaldo = saldoInicial;
            break;
    }

    // Verifica se o saldo é suficiente para comprar o item
    if (novoSaldo >= custoItem) {
        print("Comprar");
    } else {
        print("Economizar");
    }
}
