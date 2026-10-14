// Additional Task 1 (Operators) - Restaurant bill calculator.

let itemPrice = 450.0
let quantity = 3

// Subtotal: convert quantity to Double so the types match.
let subtotal = itemPrice * Double(quantity)

// Discount: 10% only if the customer has a coupon AND subtotal is above 1000.
let hasCoupon = true
let discount = (hasCoupon && subtotal > 1000) ? subtotal * 0.10 : 0.0
let discountedAmount = subtotal - discount

// GST is 18% of the discounted amount.
let gst = discountedAmount * 0.18
let total = discountedAmount + gst

print("Subtotal: \(subtotal)")
print("Discount: \(discount)")
print("GST (18%): \(gst)")
print("Total: \(total)")

// Split between 4 people.
let people = 4
let share = total / Double(people)
print("Each person pays: \(share)")

// Integer / and % to break 1234 rupees into hundreds and the remainder.
let amount = 1234
let hundreds = amount / 100
let remainder = amount % 100
print("\(amount) rupees = \(hundreds) hundreds and \(remainder) rupees")
