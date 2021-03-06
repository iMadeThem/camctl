#ifndef __HMSSpinBox_H
#define __HMSSpinBox_H
/*
 * Copyright (c) 2009 Stephen Williams (steve@icarus.com)
 *
 *    This source code is free software; you can redistribute it
 *    and/or modify it in source code form under the terms of the GNU
 *    General Public License as published by the Free Software
 *    Foundation; either version 2 of the License, or (at your option)
 *    any later version.
 *
 *    This program is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with this program; if not, write to the Free Software
 *    Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
 */

# include  <QSpinBox>

class HMSSpinBox  : public QSpinBox {

    public:
      HMSSpinBox(QWidget*parent =0);

      QValidator::State validate(QString&input, int&pos) const;

    private:
      QString textFromValue(int value) const;
      int valueFromText(const QString&text) const;

};


#endif
