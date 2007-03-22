/*
 * Copyright (C) 1997 - 2000 The Free Software Foundation
 * Copyright (C) 2000 Helix Code, Inc.
 * Copyright (C) 2000 Eazel, Inc.
 * Copyright (C) 2004 Red Hat Inc.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
 * 02111-1307, USA.
 */

#ifndef __MENU_H__
#define __MENU_H__

#include "panel-widget.h"
#include "applet.h"
#include <gmenu-tree.h>

G_BEGIN_DECLS

void		setup_menuitem		  (GtkWidget        *menuitem,
					   GtkIconSize       icon_size,
					   GtkWidget        *pixmap,
					   const char       *title,
					   gboolean          create_invisible_mnemonic);
void            setup_menu_item_with_icon (GtkWidget        *item,
					   GtkIconSize       icon_size,
					   const char       *icon_name,
					   const char       *stock_id,
					   const char       *title,
					   gboolean          create_invisible_mnemonic);

GtkWidget      *create_empty_menu         (void);
GtkWidget      *create_applications_menu  (const char  *menu_file,
					   const char  *menu_path);
GtkWidget      *create_main_menu          (PanelWidget *panel);

void		setup_internal_applet_drag (GtkWidget             *menuitem,
					    PanelActionButtonType  type);
void            setup_uri_drag             (GtkWidget  *menuitem,
					    const char *uri,
					    const char *icon);

GtkWidget *	panel_create_menu              (void);

GdkPixbuf *	panel_make_menu_icon (GtkIconTheme *icon_theme,
				      const char   *icon,
				      const char   *fallback,
				      int           size,
				      gboolean     *long_operation);

GdkScreen      *menuitem_to_screen   (GtkWidget *menuitem);
PanelWidget    *menu_get_panel       (GtkWidget *menu);
GtkWidget      *add_menu_separator   (GtkWidget *menu);

gboolean menu_dummy_button_press_event (GtkWidget      *menuitem,
					GdkEventButton *event);

void create_submenu (GtkWidget          *menu,
		     GMenuTreeDirectory *directory,
		     GMenuTreeDirectory *alias_directory);

G_END_DECLS

#endif /* __MENU_H__ */
