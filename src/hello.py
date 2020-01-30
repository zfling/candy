from sanic import Sanic
from sanic.log import logger
from sanic.response import text

app = Sanic('hello')

@app.route('/')
async def test(request):
    logger.info('Here is your log')
    return text('小糖果，你好!\n')

if __name__ == "__main__":
  app.run(host="192.168.101.107", port=8000, debug=True, access_log=True)