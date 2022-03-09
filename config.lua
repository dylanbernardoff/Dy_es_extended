Config = {}
Config.Locale = 'fr'

Config.Accounts = {
	bank = _U('account_bank'),
	black_money = _U('account_black_money'),
	money = _U('account_money')
}

Config.StartingAccountMoney 	= {bank = 5000, money = 1000}

Config.EnableSocietyPayouts 	= false -- Payer à partir du compte de la société sur laquelle le joueur est employé ? Exigence : esx_society
Config.EnableHud            	= false -- Activer le hud par défaut ? Afficher le travail et les comptes actuels (noir, banque et espèces)
Config.MaxWeight            	= 50   -- Le poids maximum de l'inventaire sans sac à dos
Config.PaycheckInterval         = 15 * 60000 -- à quelle fréquence recevoir des chèques de paie en millisecondes
Config.EnableDebug              = false -- Utiliser les options de débogage ?
Config.EnableDefaultInventory   = false -- Afficher l'inventaire par défaut (F2)
Config.EnableWantedLevel    	= false -- Utiliser le niveau souhaité de GTA normal ?
Config.EnablePVP                = true -- Autoriser le combat entre joueurs

Config.Multichar                = false -- Activer la prise en charge de esx_multicharacter
Config.Identity                 = true -- Sélectionnez les données d'identité d'un personnage avant qu'il ne soit chargé (cela se produit par défaut avec multichar)
