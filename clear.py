import sys
txt=' '.join(sys.argv[1:])
fail_str='''I am the pincode checker for user bandit25. Please enter the password for user bandit24 and the secret pincode on a single line, separated by a space. Wrong! Please enter the correct pincode. Try again.'''
if txt==fail_str:
        print 'Nope'
else:
        print 'Yep '+repr(txt)

