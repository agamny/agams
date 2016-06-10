$in_file = (Get-Content C:\a_data\perl\in.txt)
$counter = 0;
$separator = "===================================================="

# $out_file > 'file.txt'
# $in_file | Set-Content 'C:\a_data\perl\out.txt'
# $in_file >> $out_file

foreach($line in $in_file)    
	{
		if ( $counter -gt 4 ) {
			$separator | Add-Content 'C:\a_data\perl\out.txt'
			$counter = 0
			
		}
		$line = "File length: "  + $line
		$line | Add-Content 'C:\a_data\perl\out.txt'
		$counter = $counter + 1
	}

