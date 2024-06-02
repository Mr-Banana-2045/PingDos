Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object Windows.Forms.Form
$form.Text = "DOS HTTP"
$form.Size = New-Object Drawing.Size(500, 600)
$form.BackColor = '#000000'

$label = New-Object Windows.Forms.Label
$label.Text = "DDOSER"
$label.AutoSize = $true
$label.ForeColor = "Green"
$label.Location = New-Object System.Drawing.Point(160, 20)
$label.Font = New-Object Drawing.Font("Microsoft Sans Serif", 24, [Drawing.FontStyle]::Bold)
$form.Controls.Add($label)

$label2 = New-Object Windows.Forms.Label
$label2.Text = "Enter IP\URL"
$label2.ForeColor = "Gray"
$label2.AutoSize = $true
$label2.Location = New-Object System.Drawing.Point(190, 68)
$label2.Font = New-Object Drawing.Font("Microsoft Sans Serif", 10, [Drawing.FontStyle]::Bold)
$form.Controls.Add($label2)

$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(150, 100)
$textBox.Size = New-Object System.Drawing.Size(180)
$textBox.BackColor = 'white'
$textBox.Font = New-Object Drawing.Font("Microsoft Sans Serif", 15, [Drawing.FontStyle]::Bold)
$form.Controls.Add($textBox)

$label3 = New-Object Windows.Forms.Label
$label3.Text = "Number packets"
$label3.ForeColor = "Gray"
$label3.AutoSize = $true
$label3.Location = New-Object System.Drawing.Point(180, 150)
$label3.Font = New-Object Drawing.Font("Microsoft Sans Serif", 10, [Drawing.FontStyle]::Bold)
$form.Controls.Add($label3)

$textBox1 = New-Object System.Windows.Forms.TextBox
$textBox1.Location = New-Object System.Drawing.Point(150, 180)
$textBox1.Size = New-Object System.Drawing.Size(180)
$textBox1.BackColor = 'white'
$textBox1.Font = New-Object Drawing.Font("Microsoft Sans Serif", 15, [Drawing.FontStyle]::Bold)
$form.Controls.Add($textBox1)

$textbox2 = New-Object Windows.Forms.TextBox
$textbox2.ForeColor = "Green"
$textbox2.WordWrap = $false
$textbox2.BackColor = '#000000'
$textbox2.Multiline = $true
$textbox2.width = 300
$textbox2.height = 200
$textbox2.Location = New-Object System.Drawing.Point(90, 300)
$textbox2.Font = New-Object Drawing.Font("Microsoft Sans Serif", 10, [Drawing.FontStyle]::Bold)
$form.Controls.Add($textbox2)

$label4 = New-Object Windows.Forms.Label
$label4.ForeColor = "Green"
$label4.Width = 200
$label4.Location = New-Object System.Drawing.Point(170, 520)
$label4.Font = New-Object Drawing.Font("Microsoft Sans Serif", 15, [Drawing.FontStyle]::Bold)
$form.Controls.Add($label4)

$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(140,240)
$Button.Size = New-Object System.Drawing.Size(200,50)
$Button.Font = New-Object Drawing.Font("Microsoft Sans Serif", 13, [Drawing.FontStyle]::Bold)
$Button.Padding = New-Object System.Windows.Forms.Padding(5)
$Button.Text = "SEND PACKET"
$Button.ForeColor = 'black'
$Button.BackColor = 'white'
$Form.Controls.Add($Button)
$Button.Add_Click({
    for ($x=1; $x -lt $textBox1.Text; $x=$x+1){
    $textbox2.Text = (ping $textBox.Text | Out-String)
    }
    $label4.Text = "Packets Send"
})
$Form.Controls.Add($Button)

[Windows.Forms.Application]::Run($form)