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
            try {
                switch (currency) {
                    case "dollars", "DOLLARS", "Dollars" -> {
                        // For Dollar Conversion
                        pound = amount * 0.74;
                        System.err.println(amount + " Dollars = " + f.format(pound) + " Pounds");
                        euro = amount * 0.88;
                        System.err.println(amount + " Dollars = " + f.format(euro) + " Euros");
                    }
                    case "pounds", "POUNDS", "Pounds" -> {
                        // For Pound Conversion
                        dollar = amount * 1.36;
                        System.err.println(amount + " Pounds = " + f.format(dollar) + " Dollars");
                        euro = amount * 1.19;
                        System.err.println(amount + " Pound = " + f.format(euro) + " Euros");
                    }
                    case "euros", "EUROS", "Euros" -> {
                        // For Euro Conversion
                        dollar = amount * 1.13;
                        System.err.println(amount + " Euros = " + f.format(dollar) + " Dollars");
                        pound = amount * 0.84;
                        System.err.println(amount + " Euros = " + f.format(pound) + " Pounds");
                    }
                    default -> System.out.println("No input has been provided");
                }
            } catch (NumberFormatException e) {
                System.err.println("Input must be provided in the correct format");
            }
            System.err.println("Thank you for using the converter.");
        }
        catch (ArrayIndexOutOfBoundsException e){
            System.err.println("No input has been provided.");
        }
    }

}
