import sys
from robot import run

def main():
    # Print arguments for debugging (optional)
    print("Arguments received:", sys.argv)

    # Extract the test or suite file passed as the last argument
    test_source = sys.argv[-1]

    # Example of running the test with Robot Framework
    run(test_source)

if __name__ == "__main__":
    main()