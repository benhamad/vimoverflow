function! VimOverflow(arg)
python << _EOF_

import vim
from bs4 import BeautifulSoup
import re
from pyquery import PyQuery as pq
import requests


def search_question(query):
    r = requests.get("http://www.google.com/search?q=site:stackoverflow.com+{}".format(query))
    html = pq(r.text)
    google_url =  [a.attrib['href'] for a in html('.r')('a')][0]
    return re.search("q=(.*?)&", google_url).group(1)

def extract_answer(question_url):
    question = requests.get(question_url)
    soup = BeautifulSoup(question.text, 'html.parser')
    answers  = soup.findAll('div', {'class' : 'post-text'})
    return answers[1].text 

def get_answer(query):
    question_url = search_question(query)
    return extract_answer(question_url)

print get_answer(vim.eval("a:arg"))

_EOF_
endfunction
command! -nargs=1 VimOverflow call VimOverflow(<f-args>)
