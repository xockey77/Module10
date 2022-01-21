//
//  SettingSectionFabric.swift
//  Module10
//
//  Created by username on 03.11.2021.
//

import Foundation

class SettingsSectionFabric{
    
    static func settings() -> [SettingsSection]{
        
        return [
            
            SettingsSection(rows: [
                            SettingsRow(pictName: "avia", name: "Авиарежим"),
                            SettingsRow(pictName: "wifi", name: "Wi-Fi", detail: .stateWiFi),
                            SettingsRow(pictName: "bluetooth", name: "Bluetoth", detail: .stateBT),
                            SettingsRow(pictName: "cellular", name: "Сотовая связь"),
                            SettingsRow(pictName: "modem", name: "Режим модема", detail: .modemMode)]
                           ),
           
            SettingsSection(rows: [
                            SettingsRow(pictName: "notifications", name: "Уведомления"),
                            SettingsRow(pictName: "sounds", name: "Звуки, тактильные сигналы"),
                            SettingsRow(pictName: "sleep", name: "Фокусирование"),
                            SettingsRow(pictName: "time", name: "Экранное время")]
                           ),
            
            
            SettingsSection(rows: [
                            SettingsRow(pictName: "notifications", name: "Уведомления"),
                            SettingsRow(pictName: "sounds", name: "Звуки, тактильные сигналы"),
                            SettingsRow(pictName: "sleep", name: "Фокусирование"),
                            SettingsRow(pictName: "time", name: "Экранное время")]
                           ),
            
            SettingsSection(rows: [
                            SettingsRow(pictName: "main", name: "Основные"),
                            SettingsRow(pictName: "control", name: "Пункт управления"),
                            SettingsRow(pictName: "display", name: "Экран и яркость"),
                            SettingsRow(pictName: "univers", name: "Универсальный доступ"),
                            SettingsRow(pictName: "walls", name: "Обои"),
                            SettingsRow(pictName: "siri", name: "Siri и Поиск"),
                            SettingsRow(pictName: "faceID", name: "Face ID и код-пароль"),
                            SettingsRow(pictName: "sos", name: "Экстренный вызов - SOS"),
                            SettingsRow(pictName: "battery", name: "Аккумулятор"),
                            SettingsRow(pictName: "privacy", name: "Конфиденциальность")]
                           ),
            
            SettingsSection(rows: [
                            SettingsRow(pictName: "appstore", name: "App Store"),
                            SettingsRow(pictName: "wallet", name: "Wallet и Apple Pay")]
                           ),
            
            SettingsSection(rows: [
                            SettingsRow(pictName: "passwords", name: "Пароли"),
                            SettingsRow(pictName: "mail", name: "Почта"),
                            SettingsRow(pictName: "contacts", name: "Контакты"),
                            SettingsRow(pictName: "calendar", name: "Календарь"),
                            SettingsRow(pictName: "notes", name: "Заметки"),
                            SettingsRow(pictName: "remind", name: "Напоминания"),
                            SettingsRow(pictName: "recorder", name: "Диктофон"),
                            SettingsRow(pictName: "phone", name: "Телефон"),
                            SettingsRow(pictName: "messages", name: "Сообщения"),
                            SettingsRow(pictName: "facetime", name: "FaceTime"),
                            SettingsRow(pictName: "safari", name: "Safari"),
                            SettingsRow(pictName: "stocks", name: "Акции"),
                            SettingsRow(pictName: "maps", name: "Карты"),
                            SettingsRow(pictName: "compass", name: "Компас"),
                            SettingsRow(pictName: "shortcuts", name: "Быстрые команды"),
                            SettingsRow(pictName: "health", name: "Здоровье")]
                           ),
        
            SettingsSection(rows: [
                            SettingsRow(pictName: "music", name: "Музыка"),
                            SettingsRow(pictName: "tv", name: "TV"),
                            SettingsRow(pictName: "photo", name: "Фото"),
                            SettingsRow(pictName: "camera", name: "Камера"),
                            SettingsRow(pictName: "books", name: "Книги"),
                            SettingsRow(pictName: "podcasts", name: "Подкасты"),
                            SettingsRow(pictName: "itunesu", name: "iTunes U"),
                            SettingsRow(pictName: "games", name: "Game Center")]
            )
        ]
    }
}
