from robot.api import TestSuiteBuilder

class AddTagParser:
    def __init__(self):
        pass

    def parse(self, source):
        # Load the test suite
        suite = TestSuiteBuilder().build(source)

        # Iterate through test cases in the suite
        for test in suite.tests:
            test.tags.add("custom_tag")
            print(f"Added tag 'custom_tag'")

        # Define the name of the output file
        output = source.replace(".robot", "_modified.robot")

        # Save the modified test suite
        with open(output, "w", encoding="utf-8") as file:
            file.write(self._generate_robot_content(suite))

        print(f"Modified test suite saved to: {output}")

    def _generate_robot_content(self, suite):
        # Generate the Robot Framework content
        content = "*** Settings ***\n"
        for setting in suite.resource.imports:
            content += f"{setting.type}    {setting.name}\n"

        content += "\n*** Test Cases ***\n"
        for test in suite.tests:
            content += f"{test.name}\n"
            # Write tags if they exist
            if test.tags:
                content += f"    [Tags]    {'    '.join(test.tags)}\n"
            # Write keywords
            for item in test.body:
                if item.type == "KEYWORD":
                    args = "    ".join(item.args)
                    content += f"    {item.name}    {args}\n"
            content += "\n"
        return content


from custom_parser import AddTagParser
addtagparser = AddTagParser()
content = addtagparser.parse("test.robot")