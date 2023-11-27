function data()
return {
	info = {
		minorVersion = 0,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		authors = {
		    {
		        name = "ModWerkstatt",
		        role = "CREATOR",
		    },
		    {
		        name = "Kaleut",
		        role = "CREATOR",
		    },
		},
		tags = { "europe", "deutschland", "germany", "schweiz", "db", "waggon", "goods", "Intermodal", },
		minGameVersion = 0,
		dependencies = { },
		url = { "" },
	  
		params = {
			{
				key = "t3000efake",
				name = _("Fake_t3000e_wagen"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_wagen_desc"),
				defaultIndex = 0,
			},	
        },
	},
	options = {
	},
	
	runFn = function (settings, modParams)
	local params = modParams[getCurrentModId()]

        local hidden = {
			["2_clip_fake.mdl"] = true,
			["2_clip_fake_container.mdl"] = true,
			["2_clip_fake_trailer.mdl"] = true,
			["2_ekol_fake.mdl"] = true,
			["2_ekol_fake_container.mdl"] = true,
			["2_ekol_fake_trailer.mdl"] = true,
			["2_eurowagon_fake.mdl"] = true,
			["2_eurowagon_fake_container.mdl"] = true,
			["2_eurowagon_fake_trailer.mdl"] = true,
			["2_gatx_fake.mdl"] = true,
			["2_gatx_fake_container.mdl"] = true,
			["2_gatx_fake_trailer.mdl"] = true,
			["2_hupac_fake.mdl"] = true,
			["2_hupac_fake_container.mdl"] = true,
			["2_hupac_fake_trailer.mdl"] = true,
			["2_hupac2_fake.mdl"] = true,
			["2_hupac2_fake_container.mdl"] = true,
			["2_hupac2_fake_trailer.mdl"] = true,
			["2_nacco_fake.mdl"] = true,
			["2_nacco_fake_container.mdl"] = true,
			["2_nacco_fake_trailer.mdl"] = true,
			["2_txlogistik_fake.mdl"] = true,
			["2_txlogistik_fake_container.mdl"] = true,
			["2_txlogistik_fake_trailer.mdl"] = true,
			["2_vtg_fake.mdl"] = true,
			["2_vtg_fake_container.mdl"] = true,
			["2_vtg_fake_trailer.mdl"] = true,
			["2_wascosa_fake.mdl"] = true,
			["2_wascosa_fake_container.mdl"] = true,
			["2_wascosa_fake_trailer.mdl"] = true,
			["2_wascosa2_fake.mdl"] = true,
			["2_wascosa2_fake_container.mdl"] = true,
			["2_wascosa2_fake_trailer.mdl"] = true,
			["cemat_fake.mdl"] = true,
			["cemat_fake_container.mdl"] = true,
			["cemat_fake_trailer.mdl"] = true,
			["db_fake.mdl"] = true,
			["db_fake_container.mdl"] = true,
			["db_fake_trailer.mdl"] = true,
			["hupac_fake.mdl"] = true,
			["hupac_fake_container.mdl"] = true,
			["hupac_fake_trailer.mdl"] = true,
			["hupac2_fake.mdl"] = true,
			["hupac2_fake_container.mdl"] = true,
			["hupac2_fake_trailer.mdl"] = true,
			["kombi_fake.mdl"] = true,
			["kombi_fake_container.mdl"] = true,
			["kombi_fake_trailer.mdl"] = true,
			["rcw_fake.mdl"] = true,
			["rcw_fake_container.mdl"] = true,
			["rcw_fake_trailer.mdl"] = true,
			["wascosa_fake.mdl"] = true,
			["wascosa_fake_container.mdl"] = true,
			["wascosa_fake_trailer.mdl"] = true,
			["wascosa2_fake.mdl"] = true,
			["wascosa2_fake_container.mdl"] = true,
			["wascosa2_fake_trailer.mdl"] = true,
			["wascosa3_fake.mdl"] = true,
			["wascosa3_fake_container.mdl"] = true,
			["wascosa3_fake_trailer.mdl"] = true,
			["wascosa4_fake.mdl"] = true,
			["wascosa4_fake_container.mdl"] = true,
			["wascosa4_fake_trailer.mdl"] = true,
			
			["2_ekol_ekol_fake.mdl"] = true,
			["2_eurowagon_walter_fake.mdl"] = true,
			["2_hupac_walter_fake.mdl"] = true,
			["2_hupac_wetron_fake.mdl"] = true,
			["2_hupac_winner_fake.mdl"] = true,
			["2_hupac2_walter_fake.mdl"] = true,
			["2_hupac2_wetron_fake.mdl"] = true,
			["2_hupac2_winner_fake.mdl"] = true,
			["2_nacco_walter_fake.mdl"] = true,
			["2_nacco_wetron_fake.mdl"] = true,
			["2_nacco_winner_fake.mdl"] = true,
			["2_wascosa_walter_fake.mdl"] = true,
			["2_wascosa_winner_fake.mdl"] = true,
			
			["cemat_jost_fake.mdl"] = true,
			["db_bode_fake.mdl"] = true,
			["db_vehne_fake.mdl"] = true,
			["wascosa3_mars_fake.mdl"] = true,
			["wascosa4_mars_fake.mdl"] = true,
        }

		local modelFilter = function(fileName, data)
			local modelName = fileName:match('/t3000e_([^/]*.mdl)')
			return (modelName==nil or hidden[modelName]~=true)
		end

        if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]
			if params["t3000efake"] == 0 then
				addFileFilter("model/vehicle", modelFilter)
			end
		else
			addFileFilter("model/vehicle", modelFilter)
		end
		
		addModifier( "loadModel", metadataHandler )
	end
	}
end
