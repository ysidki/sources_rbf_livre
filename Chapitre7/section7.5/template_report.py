import xml.etree.ElementTree as ET

# Charger le fichier XML
tree = ET.parse('output.xml')
root = tree.getroot()

# Extraire les informations des tests
tests = []
for test in root.findall(".//test"):
    title = test.get('name')
    status = test.find(".//status").get('status')
    tests.append((title, status))

# Créer le contenu HTML
html_content = f"""
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rapport de Test</title>
    <style>
        body {{
            font-family: Arial, sans-serif;
            margin: 20px;
        }}
        header {{
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 40px;
        }}
        header img {{
            height: 50px;
        }}
        header h1 {{
            margin: 0;
        }}
        table {{
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }}
        table th, table td {{
            border: 1px solid #ddd;
            padding: 8px;
        }}
        table th {{
            background-color: #f4f4f4;
            text-align: left;
        }}
        footer {{
            display: flex;
            justify-content: space-between;
            margin-top: 40px;
        }}
        footer p {{
            margin: 0;
        }}
    </style>
</head>
<body>
    <header>
        <img src="logo_robotframework.png" alt="Logo Robot Framework" />
        <h1>Rapport de Test</h1>
        <img src="logo_entreprise.png" alt="Logo Entreprise" />
    </header>
    <main>
        <table>
            <thead>
                <tr>
                    <th>Titre de Test</th>
                    <th>Statut</th>
                </tr>
            </thead>
            <tbody>
"""

# Ajouter les tests au tableau
for title, status in tests:
    html_content += f"""
                <tr>
                    <td>{title}</td>
                    <td>{status}</td>
                </tr>
    """

# Ajouter le pied de page
html_content += """
            </tbody>
        </table>
    </main>
    <footer>
        <p>ENI Editions</p>
        <p>Auteur : Yassine SIDKI</p>
    </footer>
</body>
</html>
"""

# Sauvegarder le fichier HTML
with open("rapport_test.html", "w", encoding="utf-8") as file:
    file.write(html_content)

print("Rapport généré : rapport_test.html")
