import java.text.DecimalFormat;

public class CurrencyConverter {

    public static void main(String[] args) {
        try {

            double amount;
            double dollar;
            double pound;
            double euro;

            DecimalFormat f = new DecimalFormat("##.##");

            amount = Integer.parseInt(args[0]);
            String currency = args[1];

            // For amounts Conversion
                switch (currency) {
                    case "dollars":
                    case "DOLLARS":
                    case "Dollars":
                        // For Dollar Conversion
                        pound = amount * 0.74;
                        System.out.println(amount + " Dollars = " + f.format(pound) + " Pounds");
                        euro = amount * 0.88;
                        System.out.println(amount + " Dollars = " + f.format(euro) + " Euros");
                        break;
                    case "pounds":
                    case "POUNDS":
                    case "Pounds":
                        // For Pound Conversion
                        dollar = amount * 1.36;
                        System.out.println(amount + " Pounds = " + f.format(dollar) + " Dollars");
                        euro = amount * 1.19;
                        System.out.println(amount + " Pounds = " + f.format(euro) + " Euros");
                        break;
                    case "euros":
                    case "EUROS":
                    case "Euros":
                        // For Euro Conversion
                        dollar = amount * 1.13;
                        System.out.println(amount + " Euros = " + f.format(dollar) + " Dollars");
                        pound = amount * 0.84;
                        System.out.println(amount + " Euros = " + f.format(pound) + " Pounds");
                        break;
                    default:
                        System.out.println("No input has been provided");
                }

            System.out.println("Thank you for using the currency converter.");
        }
        catch (ArrayIndexOutOfBoundsException e){
            System.out.println("No input has been provided.");
        }
    }

}
