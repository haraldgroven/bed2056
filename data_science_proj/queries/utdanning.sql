-- SQL-spørringer for å hente utdanningsdata fra utdanning.no-systemer 
-- Author: harald groven

SELECT  
	W.styrk08_code, W.styrk08_label, 
	W.sector, 
  W.employments, W.wage_avg, W.wage_median, W.wage_q1, W.wage_q3, 
  W.employments_m, W.wage_avg_m, W.wage_median_m, W.wage_q1_m, W.wage_q3_m, 
  W.employments_f, W.wage_avg_f, W.wage_median_f, W.wage_q1_f, W.wage_q3_f 
FROM  x_ssb_wage_styrk W 
WHERE W.time = "2017"
AND W.wage_median IS NOT NULL 
AND W.workinghours = "HD"
AND W.sector = "A"
AND CHAR_LENGTH(W.styrk08_code) = 4
;


SELECT 
	soc_code, soc_title, onettype, 
	element_id, element_name, 
	l_data_value, l_se, l_lower_ci, l_upper_ci, 
	i_data_value, i_se, i_lower_ci, i_upper_ci, i_recommend_suppress, i_not_relevant, 
	date_updated, domain_source
FROM onet.x_usbls_survey_soc
WHERE l_recommend_suppress = "N" # remove insignificant data 
AND l_not_relevant = "N" # remove irrelevant data 
; 



SELECT 
	UNO.soc_code, 
	S08.styrk08_kode AS styrk08_code, 
	S08.styrk08_kort_tittel AS styrk08_kategorinavn, 
  UNO.utdanningno_yrke 
FROM uno7.v_field_styrk08 S08
INNER JOIN onet_oversatt.soc_utdanningno UNO ON (UNO.utdanningno_yrke = S08.title)
WHERE S08.stat_vis_lonnstat = 1
AND S08.innholdstype = "yrke"
;


SELECT 
  onettype, element_id, element_name_nb 
FROM onet_oversatt.content_model_reference 
WHERE element_id <> ""
; 



-- generere liste over plotly-grafer som skal genereres ved avkommentering 
SELECT 
  CONCAT(
    '# ', `element_name_nb`, ' (', `element_name`, ')\n', 
    '', `description_nb`, '\n',  
    'Kategori: ', `onettype`, '\n'
    '\n```{r}\n', 
    '# plotly_scatter_onet("', `element_name_nb`, '") ', 
    '\n```\n\n\n'
  ) AS sporring 
FROM `onet_oversatt`.`content_model_reference`
WHERE  `onettype` NOT IN ("Category", "work_activities")
AND `element_name` NOT LIKE "%High-Point%"
ORDER BY `onettype`
;




