---- #########################################################################
---- #                                                                       #
---- # Copyright (C) OpenTX                                                  #
-----#                                                                       #
---- # License GPLv2: http://www.gnu.org/licenses/gpl-2.0.html               #
---- #                                                                       #
---- # This program is free software; you can redistribute it and/or modify  #
---- # it under the terms of the GNU General Public License version 2 as     #
---- # published by the Free Software Foundation.                            #
---- #                                                                       #
---- # This program is distributed in the hope that it will be useful        #
---- # but WITHOUT ANY WARRANTY; without even the implied warranty of        #
---- # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         #
---- # GNU General Public License for more details.                          #
---- #                                                                       #
---- #########################################################################

local options = {}

local function create(zone, options)
  local pie = { zone=zone, options=options }
  return pie
end

local function update(pie)
  
end

local function background(pie)
  
end

function refresh(pie)
  lcd.setColor(CUSTOM_COLOR, lcd.RGB(120,120,120))
  lcd.drawFilledRectangle(pie.zone.x,pie.zone.y,pie.zone.w,pie.zone.h, CUSTOM_COLOR)
  
  lcd.setColor(CUSTOM_COLOR, lcd.RGB(248,252,248))
  
  lcd.drawText(pie.zone.x,pie.zone.y,"X"..pie.zone.x..",Y"..pie.zone.y, CUSTOM_COLOR + SHADOWED + SMLSIZE + LEFT)
  lcd.drawText(pie.zone.x + pie.zone.w,pie.zone.y,"X"..(pie.zone.x+pie.zone.w)..",Y"..pie.zone.y, CUSTOM_COLOR + SHADOWED + SMLSIZE + RIGHT)
  
  lcd.drawText(pie.zone.x + (pie.zone.w / 2),pie.zone.y + (pie.zone.h /2) - 8,"Zone W"..pie.zone.w.. ",H"..pie.zone.h, CUSTOM_COLOR + SHADOWED + SMLSIZE + CENTER)
  
  lcd.drawText(pie.zone.x,(pie.zone.y + pie.zone.h) - 16,"X"..pie.zone.x..",Y"..(pie.zone.y+pie.zone.h), CUSTOM_COLOR + SHADOWED + SMLSIZE + LEFT)
  lcd.drawText(pie.zone.x + pie.zone.w,(pie.zone.y + pie.zone.h) - 16,"X"..(pie.zone.x+pie.zone.w)..",Y"..(pie.zone.y + pie.zone.h), CUSTOM_COLOR + SHADOWED + SMLSIZE + RIGHT)
  
end

return { name="Zonesize", create=create, options=options, update=update, refresh=refresh, background=background }
