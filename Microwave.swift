/* Calculates and displays the the amount of time it takes to heat either subs, soups, or pizzas
given the quantity specified by the user. */
print("This program displays in minutes and seconds how long it would take for a small microwave"
    + " to heat either subs, soups, or pizzas when given the food and quantity.")
print("Enter your desired food (sub, soup, or pizza):", terminator: " ")
var userFood: String = readLine() ?? ""
print("Enter the quantity of your food (1 to 3):", terminator: " ")
var userFoodQuantity: String = readLine() ?? ""
var userFoodQuantityDouble: Double = Double(userFoodQuantity) ?? 0
if userFoodQuantityDouble < 1 || userFoodQuantityDouble > 3 {
  print("")
  print("\(userFoodQuantity) isn't a valid quantity. Please try again.")
} else {
  switch userFood {
  case "sub":
    let subHeatTime: Double = 60
    var subQuantityHeatTime: Double = 0
    if userFoodQuantityDouble > 1 {
      if userFoodQuantityDouble > 2 {
        subQuantityHeatTime = subHeatTime * 2
      } else {
        subQuantityHeatTime = subHeatTime * 1.5
      }
    } else {
      subQuantityHeatTime = subHeatTime
    }
    let subMinutes: Double = subQuantityHeatTime / 60
    let subMinutesRounded: Double = Double(Int(subMinutes))
    let subSeconds: Double = (subMinutes - subMinutesRounded) * 60
    print("")
    print("The correct heating time is: \(subMinutesRounded) minute(s) and \(subSeconds)"
        + " second(s)")

  case "soup":
    let soupHeatTime: Double = 105
    var soupQuantityHeatTime: Double = 0
    if userFoodQuantityDouble > 1 {
      if userFoodQuantityDouble > 2 {
        soupQuantityHeatTime = soupHeatTime * 2
      } else {
        soupQuantityHeatTime = soupHeatTime * 1.5
      }
    } else {
      soupQuantityHeatTime = soupHeatTime
    }
    let soupMinutes: Double = soupQuantityHeatTime / 60
    let soupMinutesRounded: Double = Double(Int(soupMinutes))
    let soupSeconds: Double = (soupMinutes - soupMinutesRounded) * 60
    print("")
    print("The correct heating time is: \(soupMinutesRounded) minute(s) and"
          + " \(soupSeconds) second(s)")

  case "pizza":
    let pizzaHeatTime: Double = 45
    var pizzaQuantityHeatTime: Double = 0
    if userFoodQuantityDouble > 1 {
      if userFoodQuantityDouble > 2 {
        pizzaQuantityHeatTime = pizzaHeatTime * 2
      } else {
        pizzaQuantityHeatTime = pizzaHeatTime * 1.5
      }
    } else {
      pizzaQuantityHeatTime = pizzaHeatTime
    }
    let pizzaMinutes: Double = pizzaQuantityHeatTime / 60
    let pizzaMinutesRounded: Double = Double(Int(pizzaMinutes))
    let pizzaSeconds: Double = (pizzaMinutes - pizzaMinutesRounded) * 60
    print("")
    print("The correct heating time is: \(pizzaMinutesRounded) minute(s) and"
        + " \(pizzaSeconds) second(s)")

  default:
    print("")
    print("\(userFood) isn't a valid food item. Please try again.")
  }
}
