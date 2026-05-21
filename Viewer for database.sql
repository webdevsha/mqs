{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyOac6dKdEIZmyoeI67f+usR",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/webdevsha/mqs/blob/main/Viewer%20for%20database.sql\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "collapsed": true,
        "id": "dd9e5d1e",
        "outputId": "3e9fcf65-bbb3-400e-ab8c-75fb36f20c36"
      },
      "source": [
        "pip install gdown"
      ],
      "execution_count": 1,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Requirement already satisfied: gdown in /usr/local/lib/python3.12/dist-packages (5.2.2)\n",
            "Requirement already satisfied: beautifulsoup4 in /usr/local/lib/python3.12/dist-packages (from gdown) (4.13.5)\n",
            "Requirement already satisfied: filelock in /usr/local/lib/python3.12/dist-packages (from gdown) (3.29.0)\n",
            "Requirement already satisfied: requests[socks] in /usr/local/lib/python3.12/dist-packages (from gdown) (2.32.4)\n",
            "Requirement already satisfied: tqdm in /usr/local/lib/python3.12/dist-packages (from gdown) (4.67.3)\n",
            "Requirement already satisfied: soupsieve>1.2 in /usr/local/lib/python3.12/dist-packages (from beautifulsoup4->gdown) (2.8.3)\n",
            "Requirement already satisfied: typing-extensions>=4.0.0 in /usr/local/lib/python3.12/dist-packages (from beautifulsoup4->gdown) (4.15.0)\n",
            "Requirement already satisfied: charset_normalizer<4,>=2 in /usr/local/lib/python3.12/dist-packages (from requests[socks]->gdown) (3.4.7)\n",
            "Requirement already satisfied: idna<4,>=2.5 in /usr/local/lib/python3.12/dist-packages (from requests[socks]->gdown) (3.13)\n",
            "Requirement already satisfied: urllib3<3,>=1.21.1 in /usr/local/lib/python3.12/dist-packages (from requests[socks]->gdown) (2.5.0)\n",
            "Requirement already satisfied: certifi>=2017.4.17 in /usr/local/lib/python3.12/dist-packages (from requests[socks]->gdown) (2026.4.22)\n",
            "Requirement already satisfied: PySocks!=1.5.7,>=1.5.6 in /usr/local/lib/python3.12/dist-packages (from requests[socks]->gdown) (1.7.1)\n"
          ]
        }
      ]
    },
    {
      "cell_type": "code",
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "02b7f17c",
        "outputId": "d5016e2a-13f8-4144-b644-f421c60193b9"
      },
      "source": [
        "# Extract the file ID from the Google Drive URL\n",
        "file_id = '1xkGM6iet4bSEMwQ3QXR4EybncWPLyAg2'\n",
        "\n",
        "# Define the download path\n",
        "download_path = '/content/database.sql'\n",
        "\n",
        "# Download the file using gdown\n",
        "import gdown\n",
        "gdown.download(id=file_id, output=download_path, quiet=False)\n",
        "\n",
        "# Update the file_path to the downloaded file\n",
        "file_path = download_path\n",
        "\n",
        "# Read and print only the first 100 lines (or search for \"casino\")\n",
        "with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:\n",
        "    for i, line in enumerate(f):\n",
        "        if \"casino\" in line.lower():\n",
        "            print(f\"Line {i}: {line[:200]}\") # Show preview\n",
        "        if i > 50000: break # Stop after previewing a segment"
      ],
      "execution_count": 2,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stderr",
          "text": [
            "Downloading...\n",
            "From (original): https://drive.google.com/uc?id=1xkGM6iet4bSEMwQ3QXR4EybncWPLyAg2\n",
            "From (redirected): https://drive.google.com/uc?id=1xkGM6iet4bSEMwQ3QXR4EybncWPLyAg2&confirm=t&uuid=adcdfdd1-fec0-4c45-9fab-7d9767de3a2f\n",
            "To: /content/database.sql\n",
            "100%|██████████| 426M/426M [00:04<00:00, 91.7MB/s]\n"
          ]
        },
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Line 1730: INSERT INTO `SERVMASK_PREFIX_comments` VALUES ('216','2852','Choi casino tai Mu88','PecherAtzhorn831@gmail.com','https://canarias.eu.com/','116.107.162.58','2026-01-23 10:42:06','2026-01-23 02:42:06',\n"
          ]
        }
      ]
    },
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "593b3720"
      },
      "source": [
        "The code above has parsed the `database.sql` file and displayed the first 50 rows of data for each table it found based on `INSERT INTO` statements. If you need to view more rows or a specific table, let me know!"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "# 1. Path to your file in Drive\n",
        "# The 'file_path' variable should point to the downloaded file's location.\n",
        "# It was previously set to an incorrect path or URL.\n",
        "file_path = '/content/database.sql' # Explicitly set to the correct downloaded file path\n",
        "\n",
        "# 2. Open and stream the first 50 lines\n",
        "print(f\"--- Previewing first 50 lines of {file_path} ---\\n\")\n",
        "\n",
        "try:\n",
        "    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:\n",
        "        for i in range(50):\n",
        "            line = f.readline()\n",
        "            if not line:\n",
        "                break\n",
        "            print(f\"Line {i+1}: {line.strip()}\")\n",
        "except Exception as e:\n",
        "    print(f\"Error reading file: {e}\")"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "p7RZIRVZp17v",
        "outputId": "93e91cfe-08f2-42db-a63c-7efde8011b1d"
      },
      "execution_count": 3,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "--- Previewing first 50 lines of /content/database.sql ---\n",
            "\n",
            "Line 1: -- All In One WP Migration SQL Dump\n",
            "Line 2: -- https://servmask.com/\n",
            "Line 3: --\n",
            "Line 4: -- Host: localhost\n",
            "Line 5: -- Database: maqis\n",
            "Line 6: -- Class: Ai1wm_Database_Mysqli\n",
            "Line 7: --\n",
            "Line 8: \n",
            "Line 9: DROP TABLE IF EXISTS `SERVMASK_PREFIX_actionscheduler_actions`;\n",
            "Line 10: CREATE TABLE `SERVMASK_PREFIX_actionscheduler_actions` (\n",
            "Line 11: `action_id` bigint unsigned NOT NULL AUTO_INCREMENT,\n",
            "Line 12: `hook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,\n",
            "Line 13: `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,\n",
            "Line 14: `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',\n",
            "Line 15: `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',\n",
            "Line 16: `args` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,\n",
            "Line 17: `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,\n",
            "Line 18: `group_id` bigint unsigned NOT NULL DEFAULT '0',\n",
            "Line 19: `attempts` int NOT NULL DEFAULT '0',\n",
            "Line 20: `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',\n",
            "Line 21: `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',\n",
            "Line 22: `claim_id` bigint unsigned NOT NULL DEFAULT '0',\n",
            "Line 23: `extended_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,\n",
            "Line 24: `priority` tinyint unsigned NOT NULL DEFAULT '10',\n",
            "Line 25: PRIMARY KEY (`action_id`),\n",
            "Line 26: KEY `hook` (`hook`),\n",
            "Line 27: KEY `status` (`status`),\n",
            "Line 28: KEY `scheduled_date_gmt` (`scheduled_date_gmt`),\n",
            "Line 29: KEY `args` (`args`),\n",
            "Line 30: KEY `group_id` (`group_id`),\n",
            "Line 31: KEY `last_attempt_gmt` (`last_attempt_gmt`),\n",
            "Line 32: KEY `claim_id` (`claim_id`),\n",
            "Line 33: KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`),\n",
            "Line 34: KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),\n",
            "Line 35: KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),\n",
            "Line 36: KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),\n",
            "Line 37: KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),\n",
            "Line 38: KEY `status_claim_id` (`status`,`claim_id`)\n",
            "Line 39: ) ENGINE=InnoDB AUTO_INCREMENT=157057 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;\n",
            "Line 40: \n",
            "Line 41: START TRANSACTION;\n",
            "Line 42: INSERT INTO `SERVMASK_PREFIX_actionscheduler_actions` VALUES ('47309','wp_mail_smtp_summary_report_email','failed','2023-05-29 09:22:22','2023-05-29 09:22:22','[1]','O:32:\\\"ActionScheduler_IntervalSchedule\\\":5:{s:22:\\\"\\0*\\0scheduled_timestamp\\\";i:1685352142;s:18:\\\"\\0*\\0first_timestamp\\\";i:1639375200;s:13:\\\"\\0*\\0recurrence\\\";i:604800;s:49:\\\"\\0ActionScheduler_IntervalSchedule\\0start_timestamp\\\";i:1685352142;s:53:\\\"\\0ActionScheduler_IntervalSchedule\\0interval_in_seconds\\\";i:604800;}','4','1','2023-05-29 09:45:28','2023-05-29 17:45:28','0',NULL,'10');\n",
            "Line 43: INSERT INTO `SERVMASK_PREFIX_actionscheduler_actions` VALUES ('47755','action_scheduler/migration_hook','failed','2023-05-28 05:18:38','2023-05-28 05:18:38','[]','O:30:\\\"ActionScheduler_SimpleSchedule\\\":2:{s:22:\\\"\\0*\\0scheduled_timestamp\\\";i:1685251118;s:41:\\\"\\0ActionScheduler_SimpleSchedule\\0timestamp\\\";i:1685251118;}','1','1','2023-05-28 05:18:51','2023-05-28 13:18:51','0',NULL,'10');\n",
            "Line 44: INSERT INTO `SERVMASK_PREFIX_actionscheduler_actions` VALUES ('47979','wp_mail_smtp_summary_report_email','failed','2023-06-05 09:45:28','2023-06-05 09:45:28','[1]','O:32:\\\"ActionScheduler_IntervalSchedule\\\":5:{s:22:\\\"\\0*\\0scheduled_timestamp\\\";i:1685958328;s:18:\\\"\\0*\\0first_timestamp\\\";i:1639375200;s:13:\\\"\\0*\\0recurrence\\\";i:604800;s:49:\\\"\\0ActionScheduler_IntervalSchedule\\0start_timestamp\\\";i:1685958328;s:53:\\\"\\0ActionScheduler_IntervalSchedule\\0interval_in_seconds\\\";i:604800;}','4','1','2023-06-05 09:48:47','2023-06-05 17:48:47','0',NULL,'10');\n",
            "Line 45: INSERT INTO `SERVMASK_PREFIX_actionscheduler_actions` VALUES ('48977','wp_mail_smtp_summary_report_email','failed','2023-06-12 09:48:47','2023-06-12 09:48:47','[1]','O:32:\\\"ActionScheduler_IntervalSchedule\\\":5:{s:22:\\\"\\0*\\0scheduled_timestamp\\\";i:1686563327;s:18:\\\"\\0*\\0first_timestamp\\\";i:1639375200;s:13:\\\"\\0*\\0recurrence\\\";i:604800;s:49:\\\"\\0ActionScheduler_IntervalSchedule\\0start_timestamp\\\";i:1686563327;s:53:\\\"\\0ActionScheduler_IntervalSchedule\\0interval_in_seconds\\\";i:604800;}','4','1','2023-06-12 09:51:19','2023-06-12 17:51:19','0',NULL,'10');\n",
            "Line 46: INSERT INTO `SERVMASK_PREFIX_actionscheduler_actions` VALUES ('50988','wp_mail_smtp_summary_report_email','failed','2023-06-19 09:51:19','2023-06-19 09:51:19','[1]','O:32:\\\"ActionScheduler_IntervalSchedule\\\":5:{s:22:\\\"\\0*\\0scheduled_timestamp\\\";i:1687168279;s:18:\\\"\\0*\\0first_timestamp\\\";i:1639375200;s:13:\\\"\\0*\\0recurrence\\\";i:604800;s:49:\\\"\\0ActionScheduler_IntervalSchedule\\0start_timestamp\\\";i:1687168279;s:53:\\\"\\0ActionScheduler_IntervalSchedule\\0interval_in_seconds\\\";i:604800;}','4','1','2023-06-19 09:51:23','2023-06-19 17:51:23','0',NULL,'10');\n",
            "Line 47: INSERT INTO `SERVMASK_PREFIX_actionscheduler_actions` VALUES ('53664','wp_mail_smtp_summary_report_email','failed','2023-06-26 09:51:23','2023-06-26 09:51:23','[1]','O:32:\\\"ActionScheduler_IntervalSchedule\\\":5:{s:22:\\\"\\0*\\0scheduled_timestamp\\\";i:1687773083;s:18:\\\"\\0*\\0first_timestamp\\\";i:1639375200;s:13:\\\"\\0*\\0recurrence\\\";i:604800;s:49:\\\"\\0ActionScheduler_IntervalSchedule\\0start_timestamp\\\";i:1687773083;s:53:\\\"\\0ActionScheduler_IntervalSchedule\\0interval_in_seconds\\\";i:604800;}','4','1','2023-06-26 09:52:09','2023-06-26 17:52:09','0',NULL,'10');\n",
            "Line 48: INSERT INTO `SERVMASK_PREFIX_actionscheduler_actions` VALUES ('58592','action_scheduler/migration_hook','failed','2023-07-11 03:40:23','2023-07-11 03:40:23','[]','O:30:\\\"ActionScheduler_SimpleSchedule\\\":2:{s:22:\\\"\\0*\\0scheduled_timestamp\\\";i:1689046823;s:41:\\\"\\0ActionScheduler_SimpleSchedule\\0timestamp\\\";i:1689046823;}','1','1','2023-07-11 03:40:29','2023-07-11 11:40:29','0',NULL,'10');\n",
            "Line 49: INSERT INTO `SERVMASK_PREFIX_actionscheduler_actions` VALUES ('58608','action_scheduler/migration_hook','failed','2023-07-11 03:57:23','2023-07-11 03:57:23','[]','O:30:\\\"ActionScheduler_SimpleSchedule\\\":2:{s:22:\\\"\\0*\\0scheduled_timestamp\\\";i:1689047843;s:41:\\\"\\0ActionScheduler_SimpleSchedule\\0timestamp\\\";i:1689047843;}','1','1','2023-07-11 03:57:27','2023-07-11 11:57:27','0',NULL,'10');\n",
            "Line 50: INSERT INTO `SERVMASK_PREFIX_actionscheduler_actions` VALUES ('94408','action_scheduler/migration_hook','failed','2024-07-03 01:07:29','2024-07-03 01:07:29','[]','O:30:\\\"ActionScheduler_SimpleSchedule\\\":2:{s:22:\\\"\\0*\\0scheduled_timestamp\\\";i:1719968849;s:41:\\\"\\0ActionScheduler_SimpleSchedule\\0timestamp\\\";i:1719968849;}','1','1','2024-07-03 01:07:49','2024-07-03 09:07:49','0',NULL,'10');\n"
          ]
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "# Search for lines containing 'casino'\n",
        "count = 0\n",
        "with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:\n",
        "    for line in f:\n",
        "        if 'casino' in line.lower():\n",
        "            print(f\"Found match: {line[:200]}\")\n",
        "            count += 1\n",
        "        if count >= 50: break # Stop after finding 50 matches"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "jg5HsdtMp4F3",
        "outputId": "d14d3b28-9681-47a0-83b8-5db0e33be095"
      },
      "execution_count": 4,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Found match: INSERT INTO `SERVMASK_PREFIX_comments` VALUES ('216','2852','Choi casino tai Mu88','PecherAtzhorn831@gmail.com','https://canarias.eu.com/','116.107.162.58','2026-01-23 10:42:06','2026-01-23 02:42:06',\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_options` VALUES ('2386408','poll_options','a:56:{i:0;a:2:{s:5:\\\"title\\\";s:23:\\\"online casino Australia\\\";s:4:\\\"link\\\";s:29:\\\"https://adventurefree.com.au/\\\";}i:1;a:2:{s:5:\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('10365','1597','comment_content','Casibom, bahis ve casino severler için kesintisiz hizmet sunan popüler bir sitedir.');\n",
            "\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('10401','1599','comment_author_url','https://casinointernetblog.com');\n",
            "\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('10439','1601','comment_author_url','https://online-casino-vegas.com');\n",
            "\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('10781','1619','comment_author_url','https://casinoeventhire.com');\n",
            "\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('10876','1624','comment_author_url','https://first-online-casino-directory.com');\n",
            "\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('11218','1642','comment_author_url','https://toptopcasinoonline.com');\n",
            "\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('11237','1643','comment_author_url','https://casinokep.co.uk');\n",
            "\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('11427','1653','comment_author_url','https://rtg-casinos-for-usa-players.com');\n",
            "\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('137738','20314','comment_author_url','https://kriptocasino.site/');\n",
            "\n",
            "Found match: INSERT INTO `SERVMASK_PREFIX_simple_history_contexts` VALUES ('968313','139415','comment_author_url','https://ggdonlinecasino.co.uk');\n",
            "\n"
          ]
        }
      ]
    }
  ]
}