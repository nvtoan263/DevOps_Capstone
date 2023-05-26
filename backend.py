from flask import Flask, render_template, request
from datetime import datetime

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        epoch_time = request.form['epoch_time']
        if epoch_time:
            try:
                epoch_time = int(epoch_time)
                converted_time = datetime.fromtimestamp(epoch_time).strftime('%Y-%m-%d %H:%M:%S.000')
                return render_template('index.html', converted_time=converted_time)
            except ValueError:
                error_message = 'Invalid epoch time.'
                return render_template('index.html', error_message=error_message)
    #random text to test lint function correctly
    current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    return render_template('index.html', current_time=current_time)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
