var country_arr = new Array("Andhra Pradesh", "Karnataka", "Kerala", "Puducherry (Pondicherry)", "Tamil Nadu", "Telangana");

												    var s_a = new Array();
												    s_a[0]="";
												    s_a[1]="Adoni|Amaravati|Anantapur|Bhimavaram|Chilakaluripet|Chittoor|Dharmavaram|Eluru|Gudivada|Guntakal|Guntur|Hindupur|Kadapa|Kakinada|Kurnool|Machilipatnam|Madanapalle|Nandyal|Narasaraopet|Nellore|Ongole|Proddatur|Rajahmundry|Rayachoti|Srikakulam|Tadepalligudem|Tadipatri|Tenali|Tirupati|Vijayawada|Visakhapatnam|Vizianagaram";
												    s_a[2]="Bagalkot|Bengaluru Urban|Bengaluru Rural|Belagavi|Bellary|Bidar|Vijayapura|Chamarajanagar|Chikballapur|Chikkamagaluru|Chitradurga|Dakshina Kannada|Davanagere|Dharwad|Gadag|Kalaburagi|Hassan|Haveri|Kodagu|Kolar|Koppal|Mandya|Mysuru|Raichur|Ramanagara|Shivamogga|Tumakuru|Udupi|Uttara Kannada|Yadgir";
												    s_a[3]="Adoor|Alappuzha|Attingal|Beypore|Chalakkudy|Chavakkad|Cherthala|Kalamassery|Kanhangad|Kannur|Kasaragod|Kattappana|Kayamkulam|Kochi|Kottakkal|Kottarakara|Kottayam|Koyilandy|Kozhikode|Kunnamkulam|Malappuram|Mananthavady|Manjeri|Manjeshwaram|Maradu|Mattanur|Nedumangad|Neyyattinkara|Nileshwaram|Ottappalam|Palakkad|Pandalam|Paravur|Pathanamthitta|Payyanur|Perinthalmanna|Ponnani|Punalur|Quilon|Ramanattukara|Shornur|Taliparamba|Tellicherry|Thiruvananthapuram|Tirur|Tirurangadi|Tiruvalla|Trichur|Uppala|Varkala|Vatakara";
												    s_a[4]="Ariankuppam|Karaikal|Kurumbapet|Mahé|Manavely|Ozhukarai|Puducherry (Pondicherry)|Thirumalairayanpattinam|Villianur|Yanam";
												    s_a[5]="Ambur|Chennai|Coimbatore|Cuddalore|Dindigul|Erode|Hosur|Kanchipuram|Karaikkudi|Kumbakonam|Madurai|Nagapattinam|Nagercoil|Neyveli|Pudukottai|Rajapalayam|Salem|Thanjavur|Thoothukkudi|Tiruchirappalli|Tirunelveli|Tiruppur|Tiruvannamalai|Vellore";
												    s_a[6]="Adilabad|Hyderabad|Karimnagar|Khammam|Mahbubnagar|Miryalaguda|Nalgonda|Nizamabad|Ramagundam|Siddipet|Suryapet|Warangal";

												    function print_country(country_id){
												    	// given the id of the <select> tag as function argument, it inserts <option> tags
												    	var option_str = document.getElementById(country_id);
												    	option_str.length=0;
												    	option_str.options[0] = new Option('Select State','');
												    	option_str.selectedIndex = 0;
												    	for (var i=0; i<country_arr.length; i++) {
												    		option_str.options[option_str.length] = new Option(country_arr[i],country_arr[i]);
												    	}
												    }

												    function print_state(state_id, state_index){
												    	var option_str = document.getElementById(state_id);
												    	option_str.length=0; // Fixed by Julian Woods
												    	option_str.options[0] = new Option('Select City','');
												    	option_str.selectedIndex = 0;
												    	var state_arr = s_a[state_index].split("|");
												    	for (var i=0; i<state_arr.length; i++) {
												    		option_str.options[option_str.length] = new Option(state_arr[i],state_arr[i]);
												    	}
												    }

												    print_country("country");
