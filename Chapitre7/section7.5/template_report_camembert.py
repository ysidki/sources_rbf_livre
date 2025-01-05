import xml.etree.ElementTree as ET

# Charger le fichier XML
tree = ET.parse('output.xml')
root = tree.getroot()

# Extraire les statistiques globales des tests
stat_element = root.find(".//statistics/total/stat")
total_tests = int(stat_element.attrib.get("pass", 0)) + int(stat_element.attrib.get("fail", 0))
passed_tests = int(stat_element.attrib.get("pass", 0))
failed_tests = int(stat_element.attrib.get("fail", 0))

# Calcul des pourcentages
passed_percentage = (passed_tests / total_tests) * 100 if total_tests > 0 else 0
failed_percentage = (failed_tests / total_tests) * 100 if total_tests > 0 else 0

# Créer le contenu HTML
html_content = f"""
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rapport de Test</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
        .chart-container {{
            width: 50%;
            margin: 20px auto;
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
        <!-- Section Graphique -->
        <div class="chart-container">
            <canvas id="testChart"></canvas>
        </div>
    </main>
    <footer>
        <p>ENI Editions</p>
        <p>Auteur : Yassine SIDKI</p>
    </footer>
    <script>
        // Données du graphique
        const testResults = {{
            labels: ["Réussis", "Échoués"],
            datasets: [{{
                label: 'Pourcentage des Tests',
                data: [{passed_percentage:.2f}, {failed_percentage:.2f}],
                backgroundColor: [
                    'rgba(75, 192, 192, 0.6)', // Vert pour les réussites
                    'rgba(255, 99, 132, 0.6)'  // Rouge pour les échecs
                ],
                borderColor: [
                    'rgba(75, 192, 192, 1)',
                    'rgba(255, 99, 132, 1)'
                ],
                borderWidth: 1
            }}]
        }};

        // Configuration du graphique
        const config = {{
            type: 'doughnut',
            data: testResults,
            options: {{
                responsive: true,
                plugins: {{
                    legend: {{
                        position: 'top',
                    }},
                    tooltip: {{
                        enabled: true
                    }}
                }}
            }}
        }};

        // Initialisation du graphique
        const testChart = new Chart(
            document.getElementById('testChart'),
            config
        );
    </script>
</body>
</html>
"""

# Sauvegarder le fichier HTML
with open("rapport_test_camembert.html", "w", encoding="utf-8") as file:
    file.write(html_content)

print("Rapport généré : rapport_test_camembert.html")
