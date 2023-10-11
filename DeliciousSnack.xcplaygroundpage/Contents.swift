var dailyOrders: [String] = []
var DailyBalance = 500.0

func processOrder(_ dishName: String) -> String {
    let dishPrice = 10.0

    DailyBalance -= dishPrice


    dailyOrders.append(dishName)

    if DailyBalance < 500.0 {
        return "Orden procesada: \(dishName)\nPrecio total: \(dishPrice)\nSaldo restante: \(DailyBalance)"
    } else {
        return "Orden no procesada\nSaldo insuficiente: \(DailyBalance)"
    }
}

let orderResult = processOrder("Hamburguesa")
print(orderResult)
