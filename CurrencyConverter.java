import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.text.DecimalFormat;

public class CurrencyConverter {

    public static void main(String[] args) throws FileNotFoundException {

        PrintStream outStream1 = new PrintStream(new File("outFile.txt"));
        try {
            PrintStream outStream = new PrintStream(new File("outFile.txt"));

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
                        System.setOut(outStream);
                        System.out.println(amount + " Dollars = " + f.format(pound) + " Pounds");
                        euro = amount * 0.88;
                        System.setOut(outStream);
                        System.out.println(amount + " Dollars = " + f.format(euro) + " Euros");
                        break;
                    case "pounds":
                    case "POUNDS":
                    case "Pounds":
                        // For Pound Conversion
                        dollar = amount * 1.36;
                        System.setOut(outStream);
                        System.out.println(amount + " Pounds = " + f.format(dollar) + " Dollars");
                        euro = amount * 1.19;
                        System.setOut(outStream);
                        System.out.println(amount + " Pound = " + f.format(euro) + " Euros");
                        break;
                    case "euros":
                    case "EUROS":
                    case "Euros":
                        // For Euro Conversion
                        dollar = amount * 1.13;
                        System.setOut(outStream);
                        System.out.println(amount + " Euros = " + f.format(dollar) + " Dollars");
                        pound = amount * 0.84;
                        System.setOut(outStream);
                        System.out.println(amount + " Euros = " + f.format(pound) + " Pounds");
                        break;
                    default:
                        System.setOut(outStream);
                        System.out.println("No input has been provided");
                }

            System.setOut(outStream);
            System.out.println("Thank you for using the converter.");
        }
        catch (ArrayIndexOutOfBoundsException e){
            System.setOut(outStream1);
            System.out.println("No input has been provided.");
        }
    }

}
