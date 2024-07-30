// 63. Write a program to copy a linked list. 
import java.util.Scanner;

class Node {
    int info;
    Node next;

    Node(int info) {
        this.info = info;
        this.next = null;
    }
}

class LinkedList {
    Node frist;

    LinkedList() {
        this.frist = null;
    }

    // Method to insert a new node at the end of the linked list
    void insert(int data) {
        Node newNode = new Node(data);
        if (frist == null) {
            frist = newNode;
        } else {
            Node temp = frist;
            while (temp.next != null) {
                temp = temp.next;
            }
            temp.next = newNode;
        }
    }

    // Method to display the linked list
    void display() {
        Node save = frist;
        while (save != null) {
            System.out.print(save.info + " ");
            save = save.next;
        }
        System.out.println();
    }

    // Method to copy the linked list
    LinkedList copy() {
        LinkedList newList = new LinkedList();
        Node save = this.frist;
        Node newfrist = null;
        Node last = null;

        while (save != null) {
            Node newNode = new Node(save.info);
            if (newfrist == null) {
                newfrist = newNode;
                last = newNode;
            } else {
                last.next = newNode;
                last = last.next;
            }
            save = save.next;
        }

        newList.frist = newfrist;
        return newList;
    }
}

public class Lab12_63 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Create a new linked list
        LinkedList originalList = new LinkedList();

        // Prompt user to enter elements for the linked list
        System.out.println("Enter elements for the linked list (enter 'done' to finish):");
        String input;
        while (true) {
            input = scanner.nextLine().trim();
            if (input.equalsIgnoreCase("done")) {
                break;
            }
            try {
                int num = Integer.parseInt(input);
                originalList.insert(num);
            } catch (NumberFormatException e) {
                System.out.println("Invalid input. Please enter a valid integer or 'done' to finish.");
            }
        }

        System.out.println("Original Linked List:");
        originalList.display();

        // Create a copy of the original linked list
        LinkedList copiedList = originalList.copy();

        System.out.println("Copied Linked List:");
        copiedList.display();

        // Modify original list to verify deep copy
        System.out.println("Modifying original list by inserting a new element...");
        originalList.insert(999);

        System.out.println("Modified Original Linked List:");
        originalList.display();

        System.out.println("Copied Linked List (unchanged due to deep copy):");
        copiedList.display();

        scanner.close();
    }
}