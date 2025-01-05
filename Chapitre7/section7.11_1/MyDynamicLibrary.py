class MyDynamicLibrary:
    def get_keyword_names(self):
        return ["Dynamic Keyword One", "Dynamic Keyword Two"]

    def run_keyword(self, name, args, kwargs):
        if name == "Dynamic Keyword One":
            print("Executing dynamic keyword one")
        elif name == "Dynamic Keyword Two":
            print(f"Executing dynamic keyword two with {args}")
        else:
            raise Exception(f"Unknown keyword: {name}")
        
        