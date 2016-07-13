<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>jQuery Populate City Dropdown Based on Country Selected</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
var country_arr = new Array("Andaman and Nicobar Islands","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh",
		"Chhattisgarh","Dadra and Nagar Haveli","Daman and Diu","Delhi","Goa","Gujarat","Haryana",
		"Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Lakshadweep","Madhya Pradesh","Maharashtra",
		"Manipur",
		"Meghalaya","Mizoram","Nagaland","Orissa","Pondicherry","Punjab","Rajasthan","Sikkim","Tamil Nadu","Tripura",
		"Uttar Pradesh","Uttaranchal","West Bengal");

// States
var s_a = new Array();
s_a[0]="";
s_a[1]="Alipur|Andaman Island| Anderson Island| Arainj-Laka-Punga| Austinabad| Bamboo Flat| Barren Island| Beadonabad|Betapur| Bindraban| Bonington| Brookesabad| Cadell Point| Calicut| Chetamale| Cinque Islands|Defence Island| Digilpur| Dolyganj| Flat Island| Geinyale| Great Coco Island| Haddo| Havelock Island| Henry Lawrence Island| Herbertabad| Hobdaypur| Ilichar| Ingoie| Inteview Island| Jangli Ghat| Jhon Lawrence Island| Karen|Kartara| KYD Islannd| Landfall Island|Little Andmand| Little Coco Island| Long Island| Maimyo| Malappuram| Manglutan| Manpur| Mitha Khari| Neill Island| Nicobar Island| North Brother Island| North Passage Island |North Sentinel Island| Nothen Reef Island| Outram Island| Pahlagaon| Palalankwe|Passage Island| Phaiapong| Phoenix Island| Port Blair| Preparis Island| Protheroepur| Rangachang| Rongat| Rutland Island| Sabari| Saddle Peak| Shadipur| Smith Island| Sound Island| South Sentinel Island| Spike Island| Tarmugli Island| Taylerabad| Titaije";


s_a[2]="";
s_a[3]="";
s_a[4]="";
s_a[5]="";
s_a[6]="";
s_a[7]="";
s_a[8]="";
s_a[9]="";
s_a[10]="";
s_a[11]="";
s_a[12]="";
s_a[13]="";
s_a[14]="";
s_a[15]="";
s_a[16]="";
s_a[17]="";
s_a[18]="";
s_a[19]="";
s_a[20]="";
s_a[21]="";
s_a[22]="";
s_a[23]="";
s_a[24]="";
s_a[25]="";
s_a[26]="";
s_a[27]="";
s_a[28]="";
s_a[29]="";
s_a[30]="";
s_a[31]="";
s_a[32]="";
s_a[33]="";
s_a[34]="";
s_a[35]="";
function populateStates( countryElementId, stateElementId ){
	
	var selectedCountryIndex = document.getElementById( countryElementId ).selectedIndex;

	var stateElement = document.getElementById( stateElementId );
	
	stateElement.length=0;	// Fixed by Julian Woods
	stateElement.options[0] = new Option('Select City','');
	stateElement.selectedIndex = 0;
	
	var state_arr = s_a[selectedCountryIndex].split("|");
	
	for (var i=0; i<state_arr.length; i++) {
		stateElement.options[stateElement.length] = new Option(state_arr[i],state_arr[i]);
	}
}

function populateCountries(countryElementId, stateElementId){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var countryElement = document.getElementById(countryElementId);
	countryElement.length=0;
	countryElement.options[0] = new Option('Select State','-1');
	countryElement.selectedIndex = 0;
	for (var i=0; i<country_arr.length; i++) {
		countryElement.options[countryElement.length] = new Option(country_arr[i],country_arr[i]);
	}

	// Assigned all countries. Now assign event listener for the states.

	if( stateElementId ){
		countryElement.onchange = function(){
			populateStates( countryElementId, stateElementId );
		};
	}
}
</script>
</head>
<body>Select State   <select id="country" name ="country"></select>
Select City <select name ="state" id ="state"></select>
 <script language="javascript">
populateCountries("country", "state");
 </script>

</body> 
</html>                                		