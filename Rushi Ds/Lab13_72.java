import java.util.Scanner;

class Node {
    int data;
    Node lptr; 
    Node rptr; 

    Node(int data) {
        this.data = data;
        this.lptr = null;
        this.rptr = null;
    }
}

class DoublyLinkedList {
    Node first;

    public DoublyLinkedList() {
        this.first = null;
    }

    
    public void insertFront(int data) {
        Node newNode = new Node(data);
        if (first == null) {
            first = newNode;
        } else {
            newNode.rptr = first;
            first.lptr = newNode;
            first = newNode;
        }
        System.out.println("Node inserted at the front.");
    }

    
    public void deleteAtPosition(int position) {
        if (first == null || position <= 0) {
            System.out.println("Invalid position!");
            return;
        }
        Node save = first;
        int i;

        for (i = 1; save != null && i < position; i++) {
            save = save.rptr;
        }

        if (save == null) {
            System.out.println("Position not found!");
            return;
        }

        if (first == save) {
            first = save.rptr;
        }

        if (save.rptr != null) {
            save.rptr.lptr = save.lptr;
        }

        if (save.lptr != null) {
            save.lptr.rptr = save.rptr;
        }

        System.out.println("Node deleted at position " + position);
    }

    
    public void insertEnd(int data) {
        Node newNode = new Node(data);
        if (first == null) {
            first = newNode;
        } else {
            Node save = first;
            while (save.rptr != null) {
                save = save.rptr;
            }
            save.rptr = newNode;
            newNode.lptr = save;
        }
        System.out.println("Node inserted at the end.");
    }

    
    public void display() {
        if (first == null) {
            System.out.println("List is empty.");
            return;
        }
        Node save = first;
        while (save != null) {
            System.out.print(save.data + " ");
            save = save.rptr;
        }
        System.out.println();
    }
   
}

public class Lab13_72 {
    public static void main(String[] args) {
        DoublyLinkedList list = new DoublyLinkedList();
        Scanner scanner = new Scanner(System.in);
        int choice, data, position;

        do {
            System.out.println("\nMenu:");
            System.out.println("1. Insert a node at the front");
            System.out.println("2. Delete a node from specified position");
            System.out.println("3. Insert a node at the end");
            System.out.println("4. Display all nodes");
            System.out.println("5. Exit");
            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter data to insert at front: ");
                    data = scanner.nextInt();
                    list.insertFront(data);
                    break;
                case 2:
                    System.out.print("Enter position to delete: ");
                    position = scanner.nextInt();
                    list.deleteAtPosition(position);
                    break;
                case 3:
                    System.out.print("Enter data to insert at end: ");
                    data = scanner.nextInt();
                    list.insertEnd(data);
                    break;
                case 4:
                    list.display();
                    break;
                case 5:
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.println("Invalid choice! Please try again.");
            }
        } while (choice != 5);

        scanner.close();
    }
    
}
