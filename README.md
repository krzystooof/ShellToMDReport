# ShellToMDReport
A simple bash script that gets runs .sh in specified folder and creates md file with code, arguments and output of these scirpts.

## example
`./shell_to_mdreport.sh folder/ result.md`
folder/ contains 1 file named test.sh
Terminal output:
```
folder/test.sh
	Arguments (max 3): 
1 22 3
```
File (result.md) output:
# Automaticaly generated report by [krzystooof's ./shell_to_mdreport.sh](https://github.com/krzystooof/ShellToMDReport "krzystooof's ./shell_to_mdreport.sh")


### folder/test.sh


```
echo $3 $2 $1
exit 0
fi
```
Arguments: 
`1` `22` `3` 
Output:

```
3 22 1
```
