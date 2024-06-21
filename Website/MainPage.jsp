<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<style> <%@include file = "MainColor.css"%></style>
		<title>DnD Simulator</title>
	</head>
	<body>
		<h1>
			Welcome to my little DnD Simulator!
		</h1>
		<div id = "messageBox" class = "sendMessage">
			<p> please enter your name</p>
			<form method = "post" >
				<input type = "text" name = "username"  />
				<br>
				<input type = "submit" value = "login" />
			</form>
		</div>
		
		<div class ="game-frame"  style ="width: 1000px; height 200px;"> 
		</div>
		
		<div>
			<p> Pick Your Class: </p>
			<form method = "post" >
				<select name = "classSelection" onchange = "this.form.submit()">
					<option value = "None" > ${ playerClass } </option>
					<option value = "Fighter" > Fighter </option>
					<option value = "Wizard" > Wizard </option>
					<option value = "Rogue" > Rogue </option>
				</select>
			</form>
		</div>
		<p>Selected Class: ${ playerClass }</p>
		
		<div>
			<p> Pick your weapon </p>
			<form method = "post" >
				<select name = "weaponSelection" onchange = "this.form.submit()">
					<option value ="None" > ${ playerWeapon } </option>
					<option value = "Short Sword" >Short Sword</option>
					<option value = "Long Sword" >Long Sword</option>
					<option value ="Warhammer" >War Hammer</option>
					<option value ="Battleaxe" >BattleAxe</option>
				</select>
			</form>
		</div>
				<p>Equipped Weapon: ${ playerWeapon }</p>
				
		<div>
			<p> Pick your monster </p>
			<form method = "post" >
				<select name = "monsterSelection" onchange = "this.form.submit()">
					<option value ="None" > ${ monsterName } </option>
					<option value = "Beholder" >Beholder</option>
					<option value = "Dragon" >Dragon</option>
					<option value ="Fire Giant" >Fire Giant</option>
					<option value ="Vampire" >Vampire</option>
				</select>
			</form>
		</div>
				<p>Selected Monster: ${ monsterName }</p>
			
		
		
		
		<div>
			<form method = "post" >
				<input type = "submit"  value = "Attack"  name= "Attack"/>
			</form>
		</div>
		
		
		
			<p>${ playerClass } HP: <progress id = "PlayerHp"  value = ${playerHealth} max = "100"> </progress>  ${ playerArmour }AC</p> 
			<p>${ playerWeapon } Damage: ${ playerDamage } </p>
			<p>${ monsterName } Attack Damage: ${ monsterDamage } </p>
			<p>${ monsterName } : <progress id = "MonsterHp"  value = ${monsterHealth} max = "100"> </progress> ${ monsterArmour }AC </p>
		
		<div>
			<form method = "post" >
				<input type = "submit"  value = "Reset"  name= "Start_Battle"/>
			</form>
		</div>
		<br>
		
		<div>
			<form method = "post" >
				<input type = "submit"  value = "Save"  name= "Save"/>
			</form>
		</div>
		<br>
		
	</body>
</html>