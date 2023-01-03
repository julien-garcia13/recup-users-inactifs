# Récupération de la liste des utilisateurs et de leurs derniers temps de connexion
$OutputEncoding = [ Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding("Windows-1252") # Pour afficher les caractères accentués
$users = Get-ADUser -Filter * -Properties LastLogonDate | Select-Object Name, LastLogonDate # Affichage de la liste des utilisateurs et de leurs derniers temps de connexion
$users
Write-Output "Terminé"