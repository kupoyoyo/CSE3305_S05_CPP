/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Lab:         0
 */

#include <stdio.h>

void sumOfInts(int num) {
    if (num > 0) { // Will only do the method operation if the integer value is greater than 0
        int sum = 0; // Declare an integer sum equal to 0
        for(int i = 1; i <= num; i++) { // Starts a for loop that will run until i reaches the inputted integer value
            if (i == num) {
                printf ("%i", i); // If i is equal to the inputted integer value, ommit the " + " from the printed string
            }
            else {
                printf("%i + ", i); // Prints the current i value with " + " appended onto the string
            }
            sum += i; // Adds the current i value to the sum variable
        }
        printf(" = %i\n", sum); // Prints the sum value
    }
    else {
        printf("The number inputted isn't a positive integer!\n"); // Will print to the screen that the number inputted isn't what was expected
    }
}

int main(int argc, char **argv)
{
    
    // Exercise 01 (I'm very sorry if this section is messy to read)
    printf("Name: Logan Thompson\n");
    printf("Phones: (404)825-8864\n");
    printf("Email: lthomp92@students.kennesaw.edu\n");
    printf("Hometown: Dallas, TX\n");
    printf("High School(s): Frisco High School (2011 - 2012), Harrison High School (2012 - 2015)\n");
    printf("Previous colleges: Chattahoochee Technical College\n");
    printf("List college math/CS courses: Calculus I, Calculus II, Calculus III, Linear Algebra, Probabilitly & Data Analysis, Discrete Structures, Programming & Problem Solving I, Programming & Problem Solving II, Professional Practices & Ethics\n");
    printf("What, when, and where was your last math and cs course? My last math course was Linear Algebra in Spring 2019, which I took here at KSU. My last CS course was Professional Practices & Ethics in Summer 2019, which I also took here at KSU.\n");
    printf("Type(s) of computers that you are confident working on: Windows and Android devices.\n");
    printf("Extracurricular activities (jobs, clubs, sports, etc.): I work at Walmart doing Ship From Store, and I'm a member of the Game Design club.\n");
    printf("Favorite books, movies, music: I haven't given myself time to read any books recently, but I enjoy fantasy novels. I primarily enjoy comedies, with Ferris Beuller's Day Off being a favorite. I listen to videogame soundtracks and guitar/piano covers of videogame soundtracks.\n");
    printf("What you plan to do after graduation? (Be as specific as you can.) Depending on my connections by the time I graduate, I plan to either work for a larger game developer on the west coast of the U.S., or establish a small game studio in order to freely create the games I want to make.\n");
    
    // Exercise 02
    printf("\nPlease input a positive integer: ");
    int numSum; // Declares integer variable numSum
    scanf("%i", &numSum); // Read user input for numSum
    sumOfInts(numSum); // Calls sumOfInts method
    
    // Exercise 03
    printf("\nPlease input another positive integer: ");
    int numList; // Declares an integer variable numList
    scanf("%i", &numList); // Read user input for numList
    if (numList <= 0) {
        printf("The number inputted isn't a positive integer!\n"); // Will print to the screen that the number inputted isn't what was expected)
    }
    else {
        for(int i = numList; i >= 0; i-=2) { // This nested for loop will print the inputted number and every other number as it decreases to 0, then do the same on the next row decreased by 2 and loop until i is less than 0.
            for (int j = i; j >= 0; j-=2) { // Sets j equal to the current i value
                printf("%i ", j); // Will print the current j value
            }
            printf("\n"); // Proceeds to next line and i decreases by 2
        }
    }
    return 0;
}

