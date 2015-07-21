function! VimOverflow(arg)
python << _EOF_

import requests
import vim
from bs4 import BeautifulSoup

base_url = 'https://api.stackexchange.com/2.2/'
search_url = 'search?order=desc&sort=activity&intitle={}&site=stackoverflow'
question_url = 'https://stackoverflow.com/q/'

def extract_answer(question_id):
    question = requests.get(question_url + str(question_id))
    soup = BeautifulSoup(question.text, 'html.parser')
    answers  = soup.findAll('div', {'class' : 'post-text'})
    return answers[1].text 

def search_answer(query):
    try : 
        r = requests.get(base_url + search_url.format(query))
    except: 
        return "Error while connecting"
    json_response = r.json()
    try:
        question_id =  json_response["items"][0]["question_id"]
    except:
        return "I didn't find a answer"
    return extract_answer(question_id)

print search_answer(vim.eval("a:arg"))

_EOF_
endfunction
command! -nargs=1 VimOverflow call VimOverflow(<f-args>)
