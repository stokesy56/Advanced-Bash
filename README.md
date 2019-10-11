# Advance bash notes :sushi:

## Linux is extensionless
- .txt etc. means nothing


## Everything is a file
Don't use spaces/files in a driectory

## Commands:

  man ls = view bash manual
  mv <file.type> <file.newtype> = changes file type
  ll = long list
  ls * = list of files and shows files in directories nicely
  nl <file> = number of lines
  head -<number> <file> = shows first <number> lines
  tail -<number> <file> = shows last <number> lines
  grep <text> = shows text that contains <text>


## Linux Permission

Things a user can do:
Read(r)
Write(w)
Execute(x)

Users that exist:
- owner
  - Typically the person/user who creates the file, however, it can be changed.
- group
  - Every file belong in a single group. Group have many users in it and give acces to mulitple people
- others
  - Everyone else not in a group or the owner

#### Changing Permissions:
chmod <Permissions> <path/file>

## Streams, Redirects and Piping
### Streams
- STDIN
  - Standard input
- STDOUT
  - Standard output
- STDERR
  - Standard error

### Piping and Redirects
Means we can join all these amazing commands together

### Redirecting
#### THis is redirecting of STDOUT
ls > list_of_ls.txt

wc words.txt > word_count.txt

cat words.txt >> word_count.txt

#### This is redirecting of STDIN
wc -w < words.txt

#### This is redirecting of STDERR
ls missing_directory 2> ls_log.txt
  - will log the error into the file ls_log.txt, the error here is the directory does not exist so cannot be listed (you need the 2 to log the error)

### Piping
We sent STDOUT and STDERR into files, but what we want is to be able to send outputs into other programs. This is very powerful and is called piping :bacon:
We use | to join programs
sort words.txt | head -4

ls | head -3

ls | tail -5

cat example.txt | grep it
  - this will return back all lines that contain 'it' in it

#### running the instance of a program is called the process, we can do multiple processes at the same time

### Process Management
top = shows top processes in order of cpu and memory usaage
ps = shows user processes
ps  = shows all processes

#### To kill use kill and the process ID (pid)
  kill <pid>

#### Sending process to background

##### Process in foreground
  sleep 100 = will sleep your machine for 100 seconds (foreground)

##### Process in the background
sleep 100 & = will send this to the background (basically wont do anything but can be viewed by ps aux)
