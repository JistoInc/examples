<?php

echo '<html><head><title>Jisto and Cisco</title></head><body>';
echo '<table align=center><tr><td>';
echo '<a href="http://www.jisto.com"><img src="jisto.png"></a>';
echo '</td><td>';
echo '<a href="http://www.cisco.com"><img src="cisco.png"></a>';
echo '</td></tr></table>';
echo '<center>';

// connect to the server
$link = mysql_connect(':/var/run/mysql-default/mysqld.sock', 
                      'root', 
                      'jisto')
        or die('<h1>Could not connect to Database: ' . mysql_error() . '</h1>');
echo '<h4>Connected successfully to Database</h4>';

// select the database
// mysql_select_db('my_database') or die('<h1>Could not select database</h1>');
// 
// // perform SQL query
// $query = 'SELECT * FROM my_table';
// $result = mysql_query($query) or die('<h1>Query failed: ' . mysql_error() . '</h1>');
// 
// // Printi results as HTML table
// echo "<table>\n";
// while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
//     echo "\t<tr>\n";
//     foreach ($line as $col_value) {
//         echo "\t\t<td>$col_value</td>\n";
//     }
//     echo "\t</tr>\n";
// }
// echo "</table>\n";
// 
// // Free resultset
// mysql_free_result($result);

// close connection
mysql_close($link);
echo '</center>';
echo '</body></html>';
?>
