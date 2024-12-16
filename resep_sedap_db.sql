-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2024 pada 07.35
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resep_sedap_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article_reseps`
--

CREATE TABLE `article_reseps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `ingredients` text NOT NULL,
  `instructions` text NOT NULL,
  `rate_item_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `article_reseps`
--

INSERT INTO `article_reseps` (`id`, `title`, `content`, `ingredients`, `instructions`, `rate_item_id`, `user_id`, `category_id`, `created_at`, `updated_at`, `image`) VALUES
(17, 'Breakfast Egg and Rice Muffin', 'Sarapan sehat yuk dengan Breakfast Egg and Rice Muffin. Hidangan yang menggabungkan telur, beras porang, dan berbagai sayuran serta daging. Praktis untuk bekal dan mengenyangkan tentunya. Ini dia resepnya untuk kamu.', 'Bahan-bahan\r\n5 Pcs\r\n50 g Beras porang\r\n50 g Air panas\r\n200 g Telur\r\n3 g Paprika powder\r\n1 g Lada hitam\r\n2 g Garam\r\n30 g Smoke beef / sosis\r\n10 g Parsley\r\n50 g Keju cheddar\r\n25 g Cooking Cream\r\n25 g Butter\r\n3 g Kaldu bubuk\r\n30 g Bawang bombay\r\n10 g Bawang putih\r\nGarnish\r\n150 g Selada\r\n30 g Parsley\r\n20 g Tomat cherry', 'Cara Membuat\r\n1. Rendam beras porang dengan air panas hingga mengembang.\r\n2. Masukan semua bahan menjadi satu, aduk hingga rata.\r\n3. Lapisi loyang muffin dengan minyak lalu panaskan loyang di dalam oven sekitar 10 menit di suhu 180 C.\r\n4. Tuang adonan ke dalam loyang dan panggang di suhu 180 selama 20-25 menit hingga berwarna kecoklatan.', 1, 2, 7, '2024-12-10 14:28:19', '2024-12-10 17:25:03', 0x61727469636c65732f715964675457556c62574c6d4772624d445577366749455470484b4867684561774a694e5755544a2e706e67),
(18, 'Bekal makan siang (orang dewasa)', 'bekal untuk yg nungguin HD..\r\n\r\nSampe sana ternyata dikasih nasi box sama teman HD..\r\n\r\n#cookpadcommunity_bekasi', 'Bahan-bahan\r\n 1 porsi\r\n1 porsi ayam goreng\r\n1 porsi telur dadar daun bawang\r\n1 porsi nasi putih', 'Cara Membuat\r\n\r\n1. Siapkan nasi dan telur dadar, sisihkan\r\n2. Goreng ayam ungkep. ulek cabe rawit dan cabe keriting + bawang putih goreng, beli gula,garam, penyedap rasa. siram dengan minyak panas. siap dijadikan ayam geprek untuk bekal.', 3, 2, 8, '2024-12-10 14:35:49', '2024-12-10 17:25:23', 0x61727469636c65732f5a6134766942437071725a6f37673153414d366d437a594c5a4e306b4d3235756f766958506167582e706e67),
(19, 'Bakwan Jagung Krispi', 'Source @cooking_withdaisy\r\n\r\n#Cookpad_Id\r\n#CookpadCommunity_Palembang\r\n#ResepBakwanJagungKrispi\r\n#ResepSimple_Ismy', 'Bahan-bahan\r\n 3 orang\r\n2 buah jagung manis\r\n1 butir telur\r\n1 batang daun bawang, iris\r\n2 sdm tepung terigu\r\n1 sdm tepung beras\r\n1 sdm tepung maizena\r\n1 sdt garam\r\n1 sdt kaldu bubuk\r\nSecukupnya air\r\nBUMBU HALUS :\r\n2 siung bawang putih\r\n2 siung bawang merah\r\n1 sdt merica\r\n1/2 sdt ketumbar\r\n1 iris kecil kunyit', 'Cara Membuat\r\n 30 menit\r\n1. Potong/sisir jagung dengan pisau.\r\n2. Campurkan semua bahan lainnya.\r\n3. Beri air sedikit demi sedikit, aduk rata.\r\n4. Goreng sampai matang berwarna kuning kecoklatan, lalu angkat, tiriskan.', 4, 3, 9, '2024-12-10 14:42:00', '2024-12-10 17:29:03', 0x61727469636c65732f4d693755647055457841685857393463434e446c366c4b74703577494f505a3548386679303448612e706e67),
(20, 'Sambal Goreng Kentang & Udang 🌶🥔🦐', 'Tumben Anak Lanang request minta dibikinin lauk ini, biasanya apa yg disajikan itu yg dia makan 😋 Walaupun kehabisan tomat, tapi Mamak tetap eksekusi, alhamdulillah Anak Lanang suka 🥰\r\n\r\n🗓 Periode Posbar: 25 Nov - 1 Des 2024 ✅️\r\n\r\n#DiulekMakinEnak\r\n#AntiRibetRibetClub\r\n#CookpadCommunity_Tangerang', 'Bahan-bahan\r\n 3-4 orang\r\n4 buah kentang, potong dadu. Cuci bersih lalu tiriskan\r\n150 gr udang kupas\r\nBumbu & Penyedap:\r\n3 siung bawang putih\r\n6 siung bawang merah\r\n10 cabai rawit merah\r\n12 cabai merah keriting\r\n2 butir kemiri\r\n1 bungkus terasi\r\n1/2 sdt lengkuas bubuk\r\n1/2 sdt daun jeruk bubuk\r\n1/2 sdt sereh bubuk\r\n1/2 sdt garam\r\n1 sdt gula pasir\r\n1/2 sdt kaldu jamur\r\nSedikit air', 'Cara Membuat\r\n\r\n1. Goreng kentang hingga kecoklatan. Angkat, tiriskan\r\n2. Chop bumbu hingga sedikit kasar\r\n3. Tumis bumbu hingga harum, masukkan udang, bumbu penyedap lainnya dan beri sedikit air supaya rasa menyatu. Aduk merata, cek rasa. Masukkan kentang, aduk kembali hingga air mulai mengering. Angkat, sajikan dengan nasi hangat 🤤', 3, 3, 10, '2024-12-10 15:10:41', '2024-12-10 17:29:21', 0x61727469636c65732f6f653062715034755458596558326235613955547946496b46666e7936474b4e51626771584254302e706e67),
(21, 'RESEP TUMIS GURIH MIXED VEGETABLE, SEHAT, KAYA SERAT & MASAKNYA CEPAT. EASY COOKING', 'Makan sayur wajib hukumnya agar sehat banyak serat dalam tubuh. Mixed vegetable beku oke juga loh ditumis.. Selamat mencoba..\r\nVideo lengkap di Youtube @Masak SattSett', 'Bahan-bahan\r\n 1-2 orang\r\nmixed vegetable\r\nbawang putih bubuk\r\nmerica\r\nkaldu bubuk rasa sapi\r\ncabe bubuk\r\ngaram', 'Cara Membuat\r\n\r\n1. Siapkan bahan\r\n2. Siapkan wajan di kompor menyala dan tuangkan sedikit minyak goreng, dan aduk-aduk sampai minyak panas\r\n3. Setelah minyak panas, tuang mixed vegetable dan aduk-aduk sampai terlihat lemas dan layu\r\n4. Tabur bawang putih bubuk aduk+ aduk-aduk\r\n5. Tabur sedikit merica + aduk-aduk\r\n6. Tabur sedikit garam + sedikit kaldu bubuk rasa sapi + aduk-aduk\r\n7. Tabur sedikit cabe bubuk + aduk-aduk\r\n8. Tuang sedikit saja air matang, sedikit banget lalu aduk-aduk\r\n9. Sudah jadi, pindahkan ke mangkuk, siap disajikan bersama lauk lainnya\r\n10. Selamat Menikmati.. Terima kasih..', 5, 2, 8, '2024-12-10 16:42:10', '2024-12-10 17:40:55', 0x61727469636c65732f6e3054546a517a6846316a5a6373486b6f753746304a7970333652567276624d7533525148385a4f2e706e67),
(22, 'Spaghetti Carbonara Beef Belly | Tanpa Cooking Cream', '\"Spaghetti alla carbonara atau carbonara adalah masakan Italia yang berupa spaghetti yang dimasak dengan saus telur, keju dan daging.[1] Carbonara diciptakan dari resep rakyat pedesaan Italia tengah yang berciri sederhana dan apa adanya.[1] Setiap orang mempunyai cara tersendiri dalam memasak carbonara namun prinsip utama adalah penggunaan bahan berkualitas terbaik.[1] Penambahan krim untuk carbonara adalah salah kaprah dan banyak orang Italia masih memperdebatkan daging yang digunakan, apakah guanciale atau pancetta. Bahan utama memasak carbonara adalah pasta, telur, pecorino dan lada hitam.[1]\"\r\n(Source: Wikipedia)\r\n\r\nKali ini pakai resep versi Willgoz..Spaghetti-nya dimasak dengan susu cair. Daging yang Mamake gunakan beef belly. Plus Mamake tambahkan bawang bombay dan bawang putih agar ada rasa gurih pada dagingnya.\r\n\r\nHasilnya... MasyaAllah si picky eater lahap makan ✅️👍🏻\r\n\r\nSalam Nikmat Tak Tersisa 🍽\r\n\r\n#roemahcoklat\r\n#KulaEtamCoCoK\r\n#KulaEtamCoCoK_kreasipasta\r\n#CookpadCommunity_id\r\n#CookpadCommunity_Borneo\r\n#CookpadCommunity_KalTim\r\n#CookpadCommunity_Bontang\r\n#GenerasiAprontis\r\n#BALONChallenge\r\n#AnekaPasta\r\n#CoCoKFightingforBALON', 'Bahan-bahan\r\n 2 porsi\r\n200 gr spaghetti ukuran 11\r\n600-700 ml cairan (me: 300 susu cair + 400 ml air)\r\n1/2 sdt garam\r\n1/2 sdt gula pasir\r\nBahan Saus:\r\n3 butir kuning telur (me : 1 butir utuh + 2 kuning telur)\r\n1/2 buah bawang bombay, cincang kasar\r\n2 siung bawang putih, cincang halus\r\n7 lembar beef belly\r\n10 buah jamur kancing (me: skip)\r\n50 gr keju parmesan bubuk\r\n1 sdt merica hitam, tumbuk kasar\r\nSejumput garam\r\nSejumput gula pasir\r\n1 sdm minyak goreng/olive oil', 'Cara Membuat\r\n 30 menit\r\n1. Siapkan bahan. Beef belly keringkan dengan tisu dapur dan dipotong 4 bagian.\r\n2. Panaskan pan hingga berasap dengan api sedang. Masukkan beef belly. Aduk bolak-balik hingga keluar minyaknya.\r\n3. Masukkan 1 sdm minyak goreng/olive oil, bawang bombay dan bawang putih. Aduk rata. Masukkan sejumput garam dan gula pasir. Aduk rata. Masak hingga terlihat berminyak dan bawang agak kecoklatan. Sisihkan.\r\n4. Campur telur dan keju parmesan. Kocok rata. Masukkan tumisan daging. Aduk rata.\r\n5. Rebus spaghetti dalam larutan susu. Beri garam dan gula pasir. Masak hingga cairan menyusut dan spaghetti matang al dente (tdk lembek dan tdk keras).\r\n6. Dalam keadaan panas, campurkan spaghetti dan sisa air rebusannya dalam campuran saus. Aduk rata.\r\nSpaghetti Carbonara siap disajikan hangat.\r\n\r\nSelamat Mencoba 💐', 3, 2, 10, '2024-12-10 16:45:22', '2024-12-10 17:41:34', 0x61727469636c65732f4d303766776f7237633973657a69447972396949676e6d4f3858325244325a444a594f4657357a4a2e706e67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('bennitampu@gmail.com|127.0.0.1', 'i:2;', 1733855172),
('bennitampu@gmail.com|127.0.0.1:timer', 'i:1733855172;', 1733855172);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` longblob DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'Breakfast', 'Breakfast is the first meal of the day, typically enjoyed in the morning after a night of rest.', 0x63617465676f726965732f484263303972684b3745337766684c4c686c6b43774f436d4a41484a564932617635466b4731634b2e706e67, 2, '2024-12-10 14:10:32', '2024-12-10 14:10:32'),
(8, 'Lunch', 'Lunch is a midday meal that provides a much-needed break and refuels the body for the afternoon ahead', 0x63617465676f726965732f6762316659426a53364d6f536162464b4d345563486655674368524951695261776477335376746d2e706e67, 2, '2024-12-10 14:32:27', '2024-12-10 14:32:27'),
(9, 'Snack', 'snack is a light meal enjoyed between lunch and dinner. It typically includes snacks, pastries, or light dishes, providing a boost of energy to bridge the gap until dinner.', 0x63617465676f726965732f6b577a7766484e594c6e6377333543446f42466279386b39765a7253466a6d5a7944654e4b746d572e706e67, 3, '2024-12-10 14:39:06', '2024-12-10 15:26:16'),
(10, 'Dinner', 'Dinner is the final meal of the day, usually enjoyed in the evening. It’s a time for families and friends to gather, share stories, and enjoy a hearty meal together.', 0x63617465676f726965732f705833543670674279367464504e64583147795a4a796a6e46336a4a36396d6953626a6144374c732e706e67, 3, '2024-12-10 15:06:53', '2024-12-10 15:06:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_09_145509_create_oauth_auth_codes_table', 1),
(5, '2024_12_09_145510_create_oauth_access_tokens_table', 1),
(6, '2024_12_09_145511_create_oauth_refresh_tokens_table', 1),
(7, '2024_12_09_145512_create_oauth_clients_table', 1),
(8, '2024_12_09_145513_create_oauth_personal_access_clients_table', 1),
(9, '2024_12_09_184506_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('003ed48e5c55721e57084580f1e6c2a90d0cd63bda35d59f0c4be64fa7c3a6775562fa44cc2e11b9', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:26:52', '2024-12-10 18:26:52', '2025-12-11 01:26:52'),
('006465840770159b22147912eb074e5c0b8368dd00997f868e80b777dd7188c000a9f330cc41648d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:14:07', '2024-12-10 14:14:07', '2025-12-10 21:14:07'),
('00a114173e7c9adfd8a635954ea9f06d0f140362560e5ffd6bf0d835a63416b9e141a4d52a2028d7', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:35:50', '2024-12-10 14:35:50', '2025-12-10 21:35:50'),
('0132aa25d836a2bcc73329e42d8fa44ddb7e92833a50d71af7212b05ebac0c9a55204cad9dc03db6', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:42:00', '2024-12-10 14:42:01', '2025-12-10 21:42:00'),
('017621f740445d42cffe6d684ae32bf712c107ff0bba47c8ce865b52d84f925047f51fc7b9dbea3a', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:26:50', '2024-12-10 17:26:50', '2025-12-11 00:26:50'),
('0212ba16b47e99c1e93ef9bb5ecc1eeda6cba1ed4cabfe9e4a8618235b1ec7b5658310aecb9517bb', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:00:15', '2024-12-10 15:00:15', '2025-12-10 22:00:15'),
('023b111d007480e80323b288fdc899f7f19cef6066c22b9c5debf5d001509347699d602051c43d08', 2, 1, 'auth_token', '[]', 0, '2024-12-11 23:14:01', '2024-12-11 23:14:01', '2025-12-12 06:14:01'),
('02699f267e35740e021dc8d7dda55962eb967cd3a530951ce8666a08e3e61eef49d1aca2878f7d78', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:43:12', '2024-12-10 17:43:12', '2025-12-11 00:43:12'),
('029565c1ac5751adb76e5df1b760ea7f9c87b7e2a1d3237f266a8074c0e4b8f6f98e2b46aa4ffb08', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:06:13', '2024-12-10 14:06:13', '2025-12-10 21:06:13'),
('0330d91fbc4a7a6178640f968ebc4d1b0d282e9629a435a0d99e368c61996ff42c078e0224f6ec02', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:35:19', '2024-12-10 18:35:19', '2025-12-11 01:35:19'),
('03c030a676fc6b864cf12e2ebe917bf451b0db6e796e60355d4dc887a45b370c2d4f37698ff0433f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:16:10', '2024-12-10 14:16:10', '2025-12-10 21:16:10'),
('0656d3df410baa261084b6cd2bdd2d482311dcf2b7619b5ef38c93c407030c44396aeeb578bc34d2', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:16:11', '2024-12-10 14:16:11', '2025-12-10 21:16:11'),
('069792de5b4d1bff2bce895b1e008c3e19119b2a4cffd42b9c85971d25149d4f5e0171f78732e6db', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:20:13', '2024-12-10 15:20:13', '2025-12-10 22:20:13'),
('07cb1cdbb42ef162a9153ab7a62f5a10014f898c2139bb776ae5f2c06f5804c5ee9e2b393dbbdf41', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:31:16', '2024-12-10 16:31:16', '2025-12-10 23:31:16'),
('07fafa9647a8eb649ee54db5b9d03141b47beb4fa5c9761c250a8068b569fd83730da8cabf0b1b38', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:26:33', '2024-12-10 15:26:33', '2025-12-10 22:26:33'),
('088a279ab2cca18d418fbf0977a49e0605ccd385748d5b7a433e9562184f0f84c3c8432c2712264d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:33:06', '2024-12-10 16:33:06', '2025-12-10 23:33:06'),
('08d10d4a8b46e05525e06a78a1a1079b6089a4de1b1a771ff7d0527bff4bd3e0ad386ee2bb3d00c8', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:33:10', '2024-12-10 16:33:10', '2025-12-10 23:33:10'),
('08eb6e6d15d32a2dafef6b7963208cf810a0d34c74f5e5a15857d3bdfe18be8bc3b4896136b7b677', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:54:41', '2024-12-10 16:54:41', '2025-12-10 23:54:41'),
('08f344f4544211678136fa54676633642ae5cf4a13e9e31a4f347bb1a816c0bb3596eae728783a8c', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:48:39', '2024-12-10 15:48:39', '2025-12-10 22:48:39'),
('096327b78a76fc810bf9f224e0e1b162add92f3684cb9410c46c142e24f41e4122c32d3cf0d32c0f', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:20:06', '2024-12-10 16:20:06', '2025-12-10 23:20:06'),
('096838a258d82eb7878b8a7a534400bdda5e1e08e898c789e3cecf47d1f6deb047042b824da8eb75', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:33:30', '2024-12-10 16:33:30', '2025-12-10 23:33:30'),
('0a23278e397bc3421aab60a0581553ac707336050be12ad0e8582f1a5728d0d0d1b5a697fa02c656', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:57:29', '2024-12-10 13:57:29', '2025-12-10 20:57:29'),
('0a5cf76e9845cf5b31260f124914f8d1b795cc9351251c22f2a31930b16b286ef851a7ae50f6e0de', 2, 1, 'auth_token', '[]', 0, '2024-12-11 03:30:19', '2024-12-11 03:30:20', '2025-12-11 10:30:19'),
('0c874dd469f2447ad873cfef3255d18f686cb543cdb4b78af514d87ae00d4b71f27ccd1b49c9255a', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:05:03', '2024-12-10 18:05:03', '2025-12-11 01:05:03'),
('0cbd1900639c5a57509b677cc708b3d2abf37faff3aa2aea5e903692e87b9f9055fdc2c3c5dbf056', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:21:45', '2024-12-10 18:21:45', '2025-12-11 01:21:45'),
('0ce648178fe1617aea3100329faa936d33391f95bf403e1bb3fa60f27f56c8725ae700287f23d198', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:17', '2024-12-10 17:24:17', '2025-12-11 00:24:17'),
('0ce80d55f8d2547c827398c852ef8405d705f691597c95d3edee23e461ac39749e820be191f344c1', 2, 1, 'auth_token', '[]', 0, '2024-12-11 03:03:20', '2024-12-11 03:03:20', '2025-12-11 10:03:20'),
('0dc3d760e403369f6dfe9c57aa716fdf9d97d50daf48933fa1ed6232db8d5745c0ecb124561e7ea1', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:41:43', '2024-12-10 17:41:43', '2025-12-11 00:41:43'),
('0e4c6a5f06e575334c5ebe46ac86f0ed3ba4b39f2c9262b9e6a3cabbcd178bdd37903c6989ab17c1', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:20:30', '2024-12-10 15:20:30', '2025-12-10 22:20:30'),
('0fd2b244094b76575841a0780ac86cf0adaa66580658c1e142f117773cc3c30949baca8d3dccd8a1', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:03:07', '2024-12-10 15:03:07', '2025-12-10 22:03:07'),
('117e5d1538f6b46a9571987ee1b7363b32d2cd6cb237414188391b37584e0f3c9b123eb5e7278b7d', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:02:32', '2024-12-10 15:02:32', '2025-12-10 22:02:32'),
('11fa3813cb786714ef436ecbc33c4cea7ce27d18a6c733fba8ab92aaae469d3ed8c39feecf560636', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:55:47', '2024-12-10 13:55:47', '2025-12-10 20:55:47'),
('121983fcda6bf78d947f80c8a791c1dc2def40371def5bb98319353d2985b3c71439f18e16e8006b', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:36:14', '2024-12-10 14:36:14', '2025-12-10 21:36:14'),
('14775e712ad96f283f4cf74672c1e31703a3caf5c4e6cde8cf24f06aebd30b9fa21da4b9afa8f049', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:30:41', '2024-12-10 18:30:41', '2025-12-11 01:30:41'),
('1522460c6cb87c488fdf031c3fc3f32b0c44d9179af5b91b55a967f97419e7f15f1faafa5c204739', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:02:52', '2024-12-10 15:02:52', '2025-12-10 22:02:52'),
('15440f178142ed572a2871376297529e951305bf8d6323308845a180c4065dd8f50b12c309a714f8', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:27', '2024-12-10 17:24:27', '2025-12-11 00:24:27'),
('154999a1a50288820da9cf39f60beb827358539a0639ce306a1487639bb293c3acaeec5cf41796e4', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:25:57', '2024-12-10 14:25:57', '2025-12-10 21:25:57'),
('1559fbca384e276a257df8e79449a071ed7e4b61fbe061e0e5cfb1a0eccbf084e7fe43d1cec9c0f2', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:40:55', '2024-12-10 17:40:55', '2025-12-11 00:40:55'),
('15abb72f14c70b97976cda299149bd14f8d0854b1d7269cc7994e5271c3c34fdba2e5f8877711990', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:05:44', '2024-12-10 14:05:44', '2025-12-10 21:05:44'),
('170cfa90630042b285b6fd394c328048c1be5b6c9c78fee80999c9492a24fe8260e46d785c001b37', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:37:42', '2024-12-10 13:37:42', '2025-12-10 20:37:42'),
('17373b8f593cbb649b7611798eacbb9db861a9ffbe8a5eab1fca75210924fb4f291639efbde507a5', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:20:15', '2024-12-10 15:20:15', '2025-12-10 22:20:15'),
('17af28e295a13ce9187725c4d355eda8084bf33a65289dbe8f235f8adb4723be923c6927de6a39db', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:42:10', '2024-12-10 16:42:10', '2025-12-10 23:42:10'),
('18790b341715b15319fbb119842e5ba9767134c08073582f89f9248a84d4d82258843739bc0f3a84', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:20:27', '2024-12-10 15:20:27', '2025-12-10 22:20:27'),
('18e9494b3b7e91bfd1fcc24336f11643ec7aa7f49918b588a7581655217551ff6061c3476f8fb1be', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:23:18', '2024-12-10 18:23:18', '2025-12-11 01:23:18'),
('1989b1047b9327aa9a0c8d11c22d7f4554091a6c6fc4e98e93c7a1df2d40de31f6bf8f29222a7656', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:48:39', '2024-12-10 13:48:39', '2025-12-10 20:48:39'),
('19928dc89482790a7fa2b4558a1434116cae7beed35e85431e7ae531624c3cb4c4c6f0a4ea9364c7', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:22:55', '2024-12-10 15:22:55', '2025-12-10 22:22:55'),
('19cad763b5161c1e47fb5f4364e4b2278da14f324897598fcdda0e45db5095bf85e29884f921c09a', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:36:03', '2024-12-10 14:36:03', '2025-12-10 21:36:03'),
('1c60de0b3f03a02f46dd96c5723dee6432039b4a08cef4b72243f5575378232c22896284e8ec4484', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:12:09', '2024-12-10 15:12:09', '2025-12-10 22:12:09'),
('1cb87239ffd6ef8968942ee412b5906fa734d57bdb4c170f176132e1f808f06bf048bb0a672777d1', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:14:12', '2024-12-10 14:14:12', '2025-12-10 21:14:12'),
('1cccfe7a1dc07a81853c61e5ea8dfc57972c83e5042a401b4f75bee78082a16632c7b6de6a985cff', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:12:23', '2024-12-10 15:12:23', '2025-12-10 22:12:23'),
('1d202f60ead9013ab338db50b7e20cccf913f41553201a6f05ef825a173471a08e6e24ce8e33e6c3', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:26:57', '2024-12-10 17:26:57', '2025-12-11 00:26:57'),
('1d9ebae30388f7fe7a4f105850ab2abf2ff664d9cf1af6984701010072b4d580f1e5f069e947fb90', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:09:06', '2024-12-10 18:09:06', '2025-12-11 01:09:06'),
('1db1fb1fdf88f0953c84000fe3abfafb43442c88aa480c5969f3a5f695afaa82a9ae766f6fe633f3', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:37:23', '2024-12-10 13:37:23', '2025-12-10 20:37:23'),
('1e23c8f67a510a18a1bc99cf03843ec12f83e67df34c940afb37fa13c1e9b8ae849fa6168db24a52', 3, 1, 'auth_token', '[]', 0, '2024-12-10 17:29:40', '2024-12-10 17:29:40', '2025-12-11 00:29:40'),
('1ea4e3ad991f65a37f32038395814641fe65e8b0aa14eb0a7dda2d48b33f9ba51c429139d57e8bed', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:05:29', '2024-12-10 18:05:29', '2025-12-11 01:05:29'),
('1f3fa79b0f5bf753fd14931f9f51e11f85a395ef34854062fee59baef1e5b2e51c9328434af99a23', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:53:57', '2024-12-11 07:53:57', '2025-12-11 14:53:57'),
('205200f0d8a95a0ecbd33574616ae28af77f17c7914c9e48de5e7bd914f34a38e50378d1c86289a2', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:40:32', '2024-12-10 13:40:32', '2025-12-10 20:40:32'),
('215fa93622cb2fc8d488cfec1ba4b42bcbb426035d427fd8b1dab699c8dc23f618f5c0f62968f301', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:42:30', '2024-12-10 14:42:30', '2025-12-10 21:42:30'),
('223a1da20f86f3349c93ab0ed9f53fde2de20720a788d15c8fd17912b5af72b1ca37e840d254be5c', 2, 1, 'auth_token', '[]', 0, '2024-12-11 23:15:51', '2024-12-11 23:15:51', '2025-12-12 06:15:51'),
('225d7db31d1848ca6e75e06e58bfaa243e703586c72adc74f74020dd98fc32049ea81d8d6e6abf84', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:12:36', '2024-12-10 15:12:36', '2025-12-10 22:12:36'),
('23617059cda29b9e57729c084ba882db66240df0d89d171c41778bb3f200f51abb6080d49009fe62', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:35:37', '2024-12-10 16:35:37', '2025-12-10 23:35:37'),
('23cdd037ececfda85d62713fb1551beb43974f82e7ffea80faf60f79c2d8fd97e3a11363fa312dd9', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:53:48', '2024-12-11 07:53:48', '2025-12-11 14:53:48'),
('24bb51ad4c9320b491eba6cd999170f03a6cd22e3f16eedc38c11db59272236ecc3b576f9d44d593', 2, 1, 'auth_token', '[]', 0, '2024-12-11 03:29:57', '2024-12-11 03:29:57', '2025-12-11 10:29:57'),
('27f2a52abd3d356108b3002f7444256dbfb8eb378d97325fb157b1a551a89eb45732ac86a85c8cde', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:59:42', '2024-12-10 13:59:42', '2025-12-10 20:59:42'),
('291b8f909c9dd7ff667f523914a575221f964b90162f7f231ca245ab27863809b65f7f941d73226f', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:06:56', '2024-12-10 15:06:56', '2025-12-10 22:06:56'),
('29c25260cad26af0fceb86706d23f58d9954db19f7ed9614d81a61378582ede06e697fc7f55fbbae', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:31:40', '2024-12-10 18:31:40', '2025-12-11 01:31:40'),
('2c5ae93e51b20126f9c61a2ec43a07be6113a728618c7fcf5da7603e5c749ba582cdc0d32fb9e31b', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:44:03', '2024-12-10 14:44:03', '2025-12-10 21:44:03'),
('2c5e5cb26f576af7f569ba865f51e39b1b618cf95f8a87cbffdf94e83da1c5788e09f80f1aa86ce0', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:45:55', '2024-12-10 16:45:55', '2025-12-10 23:45:55'),
('2d9028e4d18b1245f0fd207c39c69efe0d942041df0eb94cdbcf420a30918619472cbfdddddb922d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:42:32', '2024-12-10 16:42:32', '2025-12-10 23:42:32'),
('2e8169b5ebe11e564a41026bcfdd879577b6fd0c0d18385904b782434d0537c93356965c8b46e5a5', 3, 1, 'auth_token', '[]', 0, '2024-12-10 17:28:25', '2024-12-10 17:28:25', '2025-12-11 00:28:25'),
('2fbed5bc82282c4648bca3a29e8cc8f0eb70b42d914ed98fb0c9ee8e7ca5c77f3bdec62f5adce122', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:32:11', '2024-12-10 16:32:11', '2025-12-10 23:32:11'),
('2fea97c50c17a94bdacc8b4198bbea1718ac3f48502e37f5c207f4680cf18bb658b38e0dc88a4dfb', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:42:57', '2024-12-10 13:42:57', '2025-12-10 20:42:57'),
('3032559420466e20b79206a1e1dc44455e14200cda8076a34f08de993cbc999bb77776b3b50fa6ed', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:07:44', '2024-12-10 18:07:44', '2025-12-11 01:07:44'),
('3042541b14d065b85b42334d76e99c7db9eea42073ce4fe01b9c33b6afb40be3057c53d5c3997203', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:18:04', '2024-12-10 15:18:04', '2025-12-10 22:18:04'),
('3087188a0428307747a9892f7c28586a9d057badde3e8bacf04bbf94f792e1a4cd3aeec344dbabff', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:43:01', '2024-12-10 14:43:01', '2025-12-10 21:43:01'),
('308d458224de28d6a5672f6bf78962922c2599129eb7a9699db3571f52d2683b74c0163043a72aa3', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:56:37', '2024-12-10 13:56:37', '2025-12-10 20:56:37'),
('30cc3b0aa53de491dd1762ee63d48f2d827b61cc01a0313741f12d2329a80b0966ddabea81c5894e', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:27:59', '2024-12-10 17:27:59', '2025-12-11 00:27:59'),
('30f7753d9782189ededb1e9bed857fd1285fa930e189d2a440a6d97023f2b1b6acae56ba6841e78b', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:25:03', '2024-12-10 17:25:03', '2025-12-11 00:25:03'),
('313d2b1cfd921abb0515b29cb65d781ac7b5f9a5051f90d87dab9fbcc6014ef97e3c24a604e55620', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:20:25', '2024-12-10 15:20:25', '2025-12-10 22:20:25'),
('32194d3e2933760e8d79e833dc162bd9830bab326fd04dd95d287dbe66de73d1210428a93d8aafe2', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:34:27', '2024-12-10 16:34:27', '2025-12-10 23:34:27'),
('32e25d3a631d9784157ab613a38e73d87fc75bdf00104866850bf770d2e0d60f56844fa93623f557', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:48:41', '2024-12-10 13:48:41', '2025-12-10 20:48:41'),
('3309dd941b429d940899552f9f41810ce5b89ab22614fa7d98519a2de50d5bf54e3751572b4d29dc', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:29:48', '2024-12-10 14:29:48', '2025-12-10 21:29:48'),
('33bf16742d9fb9adc4bd2837b1ee1bad149162c41e6000230aac48182da7afa9f21c87eb85cc2875', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:56:28', '2024-12-10 13:56:28', '2025-12-10 20:56:28'),
('3483e5f6c7762916b315aef76e494bfe68bc4d9c74a1d0b6632956161caedfdddabd9f65c114d309', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:19:48', '2024-12-10 15:19:48', '2025-12-10 22:19:48'),
('363a198343d29f5c44f31ed16d07b3d62498ea43c5bc890c4bee7ef72ace5e381e95446cccb7584f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:09:00', '2024-12-10 18:09:00', '2025-12-11 01:09:00'),
('37be6b283a9468f1393a67cef3c330f40a02da78e37efa0be833de83b4508878509f02da36aacb99', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:40:29', '2024-12-10 14:40:29', '2025-12-10 21:40:29'),
('38a8e0275d36b0670a77a3dc65e6a20f1287427ceb44df6dcfd818c68f241a9918d18a9a6f57a0f3', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:56:08', '2024-12-10 16:56:08', '2025-12-10 23:56:08'),
('39ccd108c2171894b958e60aa0c9bb0d3f219c6675ea0f9d16dd1db0e27090c8ad772bb8647474fe', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:42:39', '2024-12-10 16:42:39', '2025-12-10 23:42:39'),
('3a06766adcca75a882d012b43c54cd461f81c67c3b9e2561934acfd41be0fb05725bae4cda61c1ce', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:04:15', '2024-12-10 17:04:15', '2025-12-11 00:04:15'),
('3a76f2d6fdf50e09ebd29c539d3839598950ed80a6a794251421d5b14eba5e42c6d3b6c15107e46b', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:23:33', '2024-12-10 18:23:33', '2025-12-11 01:23:33'),
('3ace5c07684245e2c2b12e857a10fa1a8c0a22d8cd7e874a8051ed9570aff5ae24618d2f3a235f32', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:39:07', '2024-12-10 14:39:07', '2025-12-10 21:39:07'),
('3ca93bd410734a4a8c814e83f8b77fcaa77c4a8755a45e544fe41b4dcb086cdef9426b819f80a1af', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:02:58', '2024-12-10 15:02:58', '2025-12-10 22:02:58'),
('3d510f359a9903b1bb568fe14b0f2788e21ecf25594dbdd963508dee7560bfb5730b2e74f8f721c0', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:27:51', '2024-12-10 15:27:51', '2025-12-10 22:27:51'),
('3de6fc8fda45bf9c2600cd9ec1f0530b295001ff7bf58d2822177b439f93843d4a348d0500484dd3', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:25:23', '2024-12-10 17:25:23', '2025-12-11 00:25:23'),
('3e7b7698a51ba653228c2c448bd10dbabb56b66aa1f9f508287dfd3e235651987d61f7c8e4bdfbfc', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:26:45', '2024-12-10 18:26:45', '2025-12-11 01:26:45'),
('41e42ab5b3a0ae55ec8cd7baf1afa4bd4a43c3cfb7a63ae7c76914815c612e898b703a2b7b8437ce', 2, 1, 'auth_token', '[]', 0, '2024-12-11 23:13:43', '2024-12-11 23:13:43', '2025-12-12 06:13:43'),
('421765c1f058d902ea43a2a96663530d9e379ee6623df173ffed3cae9e6ceaacc48e5f4729bd09dc', 2, 1, 'auth_token', '[]', 0, '2024-12-11 08:11:44', '2024-12-11 08:11:44', '2025-12-11 15:11:44'),
('425965836a96997725956aa7604134d6483275a403df9b8d4b05aa64c4abdb19ee2a284af9991332', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:00:20', '2024-12-10 17:00:20', '2025-12-11 00:00:20'),
('438e2e641dd099efbe9f7adb39a16df66cb1e3069d22fbbd45a4dc7ebb9bf95fec8073afa0f803d1', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:48:32', '2024-12-10 15:48:32', '2025-12-10 22:48:32'),
('43e240a4c81ea22206cfc431be60e383af8fa39fac6b21a21d17e069724f1b6194f8b1fc2cdea6ea', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:38:44', '2024-12-10 16:38:44', '2025-12-10 23:38:44'),
('44a91eb5ada5475bea7d56d50c9899cc57c450c5f5c82aee80a81875f08d5b8a28e2896d7255cc70', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:40:25', '2024-12-10 13:40:25', '2025-12-10 20:40:25'),
('44f923ea01f79885d1fede40defe120430e65f329a5139ae03b9817eb79dc050558ed0f1097ec576', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:59:42', '2024-12-10 13:59:42', '2025-12-10 20:59:42'),
('45959d9cd09d8d20d67feea5c1af2db620b816f6ae3d8ed602ce625681e0c4e2293b3d5aa8b9f61b', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:57:22', '2024-12-10 16:57:22', '2025-12-10 23:57:22'),
('4604c84d297192c534338ee14f79d7347bc3d21389d59956591e8937b1e88d2eccbc3f856460af54', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:41:56', '2024-12-10 17:41:56', '2025-12-11 00:41:56'),
('4668774c17be3f5e0dc1b1cc2eaf6817937828d1266acb52a022f4d9d5eaa6eea23ba73bceeca40f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:59:30', '2024-12-10 13:59:30', '2025-12-10 20:59:30'),
('489d788cfa1cca83ddac714d2913c998223b99f70229dd737366daa737f2cafb127c4507d7ae5c03', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:03:56', '2024-12-10 15:03:56', '2025-12-10 22:03:56'),
('49f5303b207c00191b13fe0f188a76ab84b85be83b3b7f96795b088ee96f8fbe36b702cf130a1749', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:05', '2024-12-10 17:24:05', '2025-12-11 00:24:05'),
('4a1e34fea00f9ba4a446da724a8e8f491b4406b14f98f4206b72f073c211749e6dcafd0948d1a4fd', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:48:57', '2024-12-10 13:48:57', '2025-12-10 20:48:57'),
('4b1be008090b089ca1161a63ae09c5f060d5e0b12f5ec09616a46d148118debcd639a353877d1fd6', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:49:11', '2024-12-10 13:49:11', '2025-12-10 20:49:11'),
('4ba9c4a45fa65b6f789298891fff6616411d1852d15045bf104527ef52ae5bdea2ed814af061cdb6', 2, 1, 'auth_token', '[]', 0, '2024-12-11 08:20:53', '2024-12-11 08:20:53', '2025-12-11 15:20:53'),
('4cfba754e25e79caac4d6f5099dc4b8c8b19d952e56ecfcdbdc60041e235b63b7468d3e99829bf2f', 2, 1, 'auth_token', '[]', 0, '2024-12-11 08:11:46', '2024-12-11 08:11:46', '2025-12-11 15:11:46'),
('4d3f19403390a80c73b3f73af6bdae60a03a6cb9f58feb09cf20cd8f2c4c26167ea6f11b3c6c87c8', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:00:30', '2024-12-10 17:00:30', '2025-12-11 00:00:30'),
('4d79b080d9e97b77bf7a8cd6104b612e9e2b93ba7f8c146c32f81537ebee988ec609945f20d734d1', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:50:44', '2024-12-10 13:50:44', '2025-12-10 20:50:44'),
('4d928c642edac5da0ac6f5c2f7416c11970126b7cb22217ab59e1aa4a8b788650f808f856411bb90', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:28:10', '2024-12-10 17:28:10', '2025-12-11 00:28:10'),
('4dc231354ca25c3c31ff540d5c46edf952f0ef979e6534141b653ca33c68a18fa59ac8ce89b4c9e4', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:36:50', '2024-12-10 14:36:50', '2025-12-10 21:36:50'),
('4e91c9890f11bd6d0afd72dd9d2fcafd6fbf70a3c446323850b83f4e499d60e4a5a9435b43f422b0', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:26:16', '2024-12-10 15:26:16', '2025-12-10 22:26:16'),
('4e960a006b23be2117b622cb0a64c2581541759ebacddbd53be3d555a68d5e249cb7620d50db2ec5', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:47:04', '2024-12-10 14:47:04', '2025-12-10 21:47:04'),
('4eb9b249e18cd33862ec2a56d1736c0f4e88d31b728132f8620ea1cee1a7912ceedcc56b46242ee5', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:36:45', '2024-12-10 14:36:45', '2025-12-10 21:36:45'),
('4f24127fcdd8d210bf60412bdca9356928c551dd9428ac0d031155eefaa4177814ec1b89d7ea60ea', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:58:23', '2024-12-11 07:58:23', '2025-12-11 14:58:23'),
('4f26ea54f7e89c5722cdef285b67e3c83534863b757fbe3cb6355a696906c93fcb094be4443328a2', 2, 1, 'auth_token', '[]', 0, '2024-12-10 15:43:58', '2024-12-10 15:43:58', '2025-12-10 22:43:58'),
('501b37428c9648979fe36a540c6b3fc5d71349ad038610120c3015b5da75896d34da599440f889f7', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:39:19', '2024-12-10 13:39:19', '2025-12-10 20:39:19'),
('5095c2b2212b66d5ea5441ad23863004f09280d000c93a7ec78eeca30f15b52ffb1a69aea570ab3a', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:26:47', '2024-12-10 15:26:47', '2025-12-10 22:26:47'),
('52a8ff34127f2d842c6473292a8854aff762e7d2d062ffd648e15c4306692b62ec16f0cd00e142cb', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:56:30', '2024-12-10 13:56:30', '2025-12-10 20:56:30'),
('52b36a5930a3d0f7ac576e90f3caf3e2b02ec5ebda12129c28ee0cda5d4cbfe6c6763a85434c5a49', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:13:44', '2024-12-10 14:13:44', '2025-12-10 21:13:44'),
('53e5b9ffcba57672debf849b67ea745b1d8db82e18f6f82b550f4bc0efe9c199b2ca8852413e42c0', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:35:12', '2024-12-10 16:35:12', '2025-12-10 23:35:12'),
('53f7ad0c676ffa9f4d97f90044d90198089fe80691e81e0177c96b40a6bb5b9dc618345834a42e74', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:27:27', '2024-12-10 18:27:27', '2025-12-11 01:27:27'),
('5436238acad6033b669002d3281f219f9fc83e44827fac3a2830d5f2019468241273781d4ef7eeb6', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:53:40', '2024-12-11 07:53:40', '2025-12-11 14:53:40'),
('5452581e140602b4f0e32add403c675132a359f4ae704709e2aade5553cb0c5df783e88b84355bf9', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:06:53', '2024-12-10 15:06:53', '2025-12-10 22:06:53'),
('555cdafa5936b1ae003e7fba8de1ad2ce933c728f106ffd509d2ce74f43e0fc1f2316316dbef1c12', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:17:52', '2024-12-10 15:17:52', '2025-12-10 22:17:52'),
('55f7b6543e273f007f9661a9fbf0642fb48a674a290abca1670ed4856ad624b4b8f282d46246f172', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:02:56', '2024-12-10 15:02:56', '2025-12-10 22:02:56'),
('575091d4526e4258318ccda47aaad437a83be5ce84a32d770bb4d3ebb4fdcac77c9f498310e968ca', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:48:27', '2024-12-10 14:48:27', '2025-12-10 21:48:27'),
('57710246916798bad132c87c99752d9467f69a37ee59e983424b7133ecdc60b66129d2812607063d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:04:44', '2024-12-10 17:04:45', '2025-12-11 00:04:44'),
('579b6e36203edc11e6b8d3e24b41e5cf277e8c9cd8b567ed1ead6da913f99130da1567e31cb1ff8e', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:11:52', '2024-12-10 16:11:52', '2025-12-10 23:11:52'),
('588bb9d66bc10e32b19012304b747081fd960a0197eaccc5400ac22bb5bf97a96ef1c779b1103055', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:35:30', '2024-12-10 16:35:30', '2025-12-10 23:35:30'),
('591ad3bc939ab67a0af54529628426e37e6807eb485cdf667b6a942ff80a38f647bb69cf3f3c5196', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:26:36', '2024-12-10 17:26:36', '2025-12-11 00:26:36'),
('5a4c4519493615ccb7ff7e3e039fee1f31d01cf820a68c9444f2897a8e3a37265f9f3463dbff7d91', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:27:26', '2024-12-10 17:27:26', '2025-12-11 00:27:26'),
('5a58428bdc4492e040c1dc0846346bd150afde53d86204176f138e9429adcee0ed0062296d4c4cc9', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:23:00', '2024-12-10 15:23:00', '2025-12-10 22:23:00'),
('5b7dd9bf912d244d11614f520a6553518a6fae0729498f5d4e0341a306a9784bdbb8b478f7d9843b', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:40:33', '2024-12-10 13:40:33', '2025-12-10 20:40:33'),
('5bdc24e7bf9093ee76cf63c80252d420b30c963708db9ee91529623b1cf2cdb519d2cf0c925e9441', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:19:12', '2024-12-10 16:19:13', '2025-12-10 23:19:12'),
('5db531666e2d877aa3aaf80b9249606675dc8b6c575c941e679f8e0e8ed1ff260c9a293ff9fa3dde', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:21:53', '2024-12-10 17:21:53', '2025-12-11 00:21:53'),
('5dc4ed9d94ded8165f0bc5edf7296d3176c34673725f0e68668c4928c365f8a274900f0cace53e13', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:05:51', '2024-12-10 14:05:51', '2025-12-10 21:05:51'),
('5e076cbd031ca173f518a5b9fbb2373ae923c2f7f308b2f3edcd459bc76a81c38f18281f53f50702', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:27:40', '2024-12-10 17:27:40', '2025-12-11 00:27:40'),
('5eccbdc9ff5ade96c384ac52826fef07b7c74ec3b8d8fe0a1605560ce17929faba1359c512c1e05a', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:53:28', '2024-12-11 07:53:28', '2025-12-11 14:53:28'),
('60844197ba79769a5b3e920f13f18f23815a42aa05e13696ce3be0d429f689396781f2f6494e3b1b', 2, 1, 'auth_token', '[]', 0, '2024-12-11 23:15:47', '2024-12-11 23:15:48', '2025-12-12 06:15:47'),
('613ee47c7cd1799742e096525a30038708b3b4679ae592fb5991d22c164bacdbc01757a7eafe69be', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:24:01', '2024-12-10 18:24:01', '2025-12-11 01:24:01'),
('62b0a8d3fe0fd2ad7d422dd897bef80933dd45ec630c2882819ba360f65f33333138236dd3f6003e', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:07:06', '2024-12-10 15:07:06', '2025-12-10 22:07:06'),
('62b4c9b94c29abbf114daa058ce5f839406b968ad59413f657b109486af4fd710e49a8305c9e5c9b', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:55:51', '2024-12-10 16:55:52', '2025-12-10 23:55:51'),
('63bddb04990e9a2f6f6bb2591549ba51d02c41386219ea093eb97e81f4288aeac90095cdece915c0', 2, 1, 'auth_token', '[]', 0, '2024-12-11 03:29:54', '2024-12-11 03:29:54', '2025-12-11 10:29:54'),
('658abf3d3dacb501a985084ec6114c327b1cfe182eaccb89a6566ba7bc857556ea42b5092dc9c89a', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:35:33', '2024-12-10 18:35:33', '2025-12-11 01:35:33'),
('666312789cd0bc4f6acef8b163d2b601ec3f4e38effa1c411bda0998257358b08b82a5d7e2d41c42', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:38:42', '2024-12-10 16:38:42', '2025-12-10 23:38:42'),
('66abcb4ee18e1d9cdc22fd50e7a69183af9ea4baaffa688f54a3b71c90e7d69057a372d1e8119b39', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:10:15', '2024-12-10 14:10:15', '2025-12-10 21:10:15'),
('67393ebad3530ecef3929f52e473449565d86f1090ea425a6586248a3e57492bee664c6079564bb1', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:12:20', '2024-12-10 16:12:20', '2025-12-10 23:12:20'),
('6741220a1cb4490f0f621048ae55a7691c46ecb482506c65d8f779ceca800d76ca66f6f715c1c47b', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:29:41', '2024-12-10 14:29:41', '2025-12-10 21:29:41'),
('67798b22255544d99681e5f92df958d521d81e8cdbcd0de4f5e09888256b848288e30e986546dba5', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:39:27', '2024-12-10 14:39:27', '2025-12-10 21:39:27'),
('67cf396dc7a34cc8f23c156ca215e8f8692faccc743e446ce14764b1b67d2af156a5a0bf19f41fb0', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:42:37', '2024-12-10 16:42:37', '2025-12-10 23:42:37'),
('68234a696aa204d7d809e6197c3552ff2ae6cfd736176ef11cc49babdf6e7466b16adf36436d2d94', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:28', '2024-12-10 17:24:28', '2025-12-11 00:24:28'),
('69ba63f21e86ca2cab3c09a6c700b1b44ec15168da5a17c1b3086a10a753c5ede7e762d5d74d3d18', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:56:15', '2024-12-10 16:56:15', '2025-12-10 23:56:15'),
('6a1b4e915c9a66176f13c8f4063d52d22b0de2700e9a22f10ecb9fc996153b8e8e9f4e7a6e17620c', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:07:49', '2024-12-10 18:07:49', '2025-12-11 01:07:49'),
('6a9aaf9b765875beac916eab2552056f79b5710805a4983b94ddeacdc12b3a90abf8e182d5168000', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:48:22', '2024-12-10 14:48:22', '2025-12-10 21:48:22'),
('6ad3383ada3747883415819891c582338f2a8962ff576a1277d45bc02a5992c16e52cf19f11aafdd', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:59:39', '2024-12-10 13:59:39', '2025-12-10 20:59:39'),
('6b610f34c6c40a3f618daee06f6e527d58607071ccc6adab94ae7c7cf535afa7f28c7f6eaf8ac6cb', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:05:12', '2024-12-10 17:05:12', '2025-12-11 00:05:12'),
('6c387fce176cd64250a210d880401936edf8a0caaadcc9936a018611ee905ddb5b0b36c10a882f5d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:35:44', '2024-12-10 16:35:44', '2025-12-10 23:35:44'),
('6cb737a098c172b61962f8c10ffa57ad8caea84fe5f1e79c903e32a36d247dc174bb32f83a07725d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:23:25', '2024-12-10 16:23:25', '2025-12-10 23:23:25'),
('6da46263279608aec6394c2534918b85b30629fa295893d5f3849bb23c0343ff5a8b2afc73ce3dc7', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:26:08', '2024-12-10 15:26:08', '2025-12-10 22:26:08'),
('6de13fc69940760838a220f7a57b55557a35582a5af54e171e47aa656f0cbf3f882c6d2c63fc347c', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:05', '2024-12-10 17:24:05', '2025-12-11 00:24:05'),
('6e0fbfd481cd70a2f96e5f32dbcb9f9175ce2e2ab1d978a16c257f719d86c1fbe8647c370aa55c85', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:05:27', '2024-12-10 18:05:27', '2025-12-11 01:05:27'),
('6e517256213fb784683f6182723cd41b8d09f5845f1e170c188614726ca32ae5b1acb1b8268b9462', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:44:13', '2024-12-10 14:44:13', '2025-12-10 21:44:13'),
('6f1322bff2bfd7a8aea726d0261a30ee7b7ea82068f83dcd37b968271f557b7329b78eac49f77edd', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:46:28', '2024-12-10 13:46:28', '2025-12-10 20:46:28'),
('6f77bb7ced32b52a1f09112f320ebb65d1f7a3ca9e5d8dc0847695a72bf9189c3c629bc42e6c6ad5', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:08:22', '2024-12-10 14:08:22', '2025-12-10 21:08:22'),
('6fd5a9f4343d03feef65a21700a641a4dbaaa144ae8c2866688d3c1867aa8b1f603cae878cc243a7', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:03:25', '2024-12-10 18:03:25', '2025-12-11 01:03:25'),
('704fbd1a7d335fc843c4f4422deddb9d2056c9218c9f04ab278fb7e11d8eb2f88ab8eec16ba85a4e', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:27:02', '2024-12-10 17:27:03', '2025-12-11 00:27:02'),
('707cb1f51789dc871b6f737777db8e42d2cbdde986a1a53869889efd9fe6213e114cd32ebb82811f', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:48:55', '2024-12-10 15:48:55', '2025-12-10 22:48:55'),
('715b9b75a234a633ef7a9636810e30054b583b6c3df8a2e9a74f8997f9ef0cae7fc3113ffaabc78f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:37:36', '2024-12-10 13:37:36', '2025-12-10 20:37:36'),
('71fb890a8ac939505b9fa1e3d46197b6fd6a5c8b3b7f3d65b7910b490b495be5cba7ba1405d1b557', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:04:10', '2024-12-10 17:04:10', '2025-12-11 00:04:10'),
('72d24e7f301e9cec2fd0991551290ea22d1bcd49e80d64968ecfa82d52ff051c8a4bd2c582c9aefc', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:43:54', '2024-12-10 14:43:54', '2025-12-10 21:43:54'),
('75fe7d71477f2e5658c4bf0490ff27f84592910d1e3d2aedad61c54dd4b19859be88ff81249a2520', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:42:18', '2024-12-10 14:42:18', '2025-12-10 21:42:18'),
('76f4d6c92321c5ce601ad964fe0ba78d7234a582dab394b27a692b7ffce9218ff45473edf0e7fb2c', 3, 1, 'auth_token', '[]', 0, '2024-12-10 17:29:27', '2024-12-10 17:29:27', '2025-12-11 00:29:27'),
('7738558a5f141308e0db47f9fe9c603913a88a080a36daf4f80aa11cb384e6181fdd7509501b9fa7', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:36:17', '2024-12-10 14:36:17', '2025-12-10 21:36:17'),
('77c275820959b73c9269c5d8aa12519367427991e040012aa0b8878ff3e829a4a5a8bb1572b0fab0', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:16', '2024-12-10 17:24:17', '2025-12-11 00:24:16'),
('7858be046c36daa6b5968b1edbe41a085a629515355b1ee4cd8cf869787043cf503543fe08a85946', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:58:26', '2024-12-11 07:58:26', '2025-12-11 14:58:26'),
('785bdab8f46ff91bb14bea77972d587516892c4a0774ba54e4dbe7f39b0f1902658d20cc014f6e4c', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:59:48', '2024-12-10 13:59:48', '2025-12-10 20:59:48'),
('788772e276098c4486cfb2bae1281327ef1975f5232fd777a3ff35987c926b365f91ff1de95da86b', 2, 1, 'auth_token', '[]', 0, '2024-12-11 23:13:55', '2024-12-11 23:13:55', '2025-12-12 06:13:55'),
('797afd75bfffe0fa3ed22563cf0bc690abc6721cf7af0aea5d6988dcfb855241015dd14fff0f0ae0', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:26:40', '2024-12-10 17:26:40', '2025-12-11 00:26:40'),
('799d61371a4ed3bd8c776d1e0713c05eedea0b474090a51a3ff9b2d7db2662e8e7612ebae2aca9e7', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:29:44', '2024-12-10 14:29:44', '2025-12-10 21:29:44'),
('7a3d3327e21e852d0e6ea20cf8229750e73a5be1d839a32eed7f1831d56a3f1b853401796b95a5d3', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:01:54', '2024-12-10 17:01:54', '2025-12-11 00:01:54'),
('7a8b4e961e436e8ead5f5d6aa9e117df595381f9a192d398778b3cc09680c25fc993ea8ce1cb6df5', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:58:35', '2024-12-10 17:58:35', '2025-12-11 00:58:35'),
('7b08fe4422276f93188c3a42885084f3f0853da43b6f671a8a30264de39a52ab14d9809149f62ef9', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:37:22', '2024-12-10 13:37:22', '2025-12-10 20:37:22'),
('7b2565a5733c963b8fea973e5c24446a0795108e62fc858cf20680cf1406b448cdc408b901267eb0', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:08:10', '2024-12-10 18:08:10', '2025-12-11 01:08:10'),
('7b3a14aed064835e37681292f40b496d293a1303cdb92dad0ecbe9407c7bee5a5b029a9f9be6eb0a', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:27', '2024-12-10 17:24:27', '2025-12-11 00:24:27'),
('7b8a4f2a9073d4808ae9e995e938df6ef5b306943e6e7edf73d3b3f7aae7919a0b0f9a898cbf3d2b', 3, 1, 'auth_token', '[]', 0, '2024-12-10 17:28:32', '2024-12-10 17:28:32', '2025-12-11 00:28:32'),
('7d9a14ff399575da6d42cfa6cdb9840d8464c2307391ccc5024c12453fe3ec9b93e4e74cf00fd06f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:26:45', '2024-12-10 18:26:45', '2025-12-11 01:26:45'),
('7dbe9eb161fea346df83b8c522028c4ab132bd51bfbbb3731fc87dfb9819217c29233141cf0baf2d', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:44:20', '2024-12-10 14:44:20', '2025-12-10 21:44:20'),
('7e860640eaf3d6358b96fa905f484e51c90e1978fe69228022f91af8c6ba7380f7df43f6d93adf88', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:33:05', '2024-12-10 14:33:05', '2025-12-10 21:33:05'),
('7fa4136c1fad27c7038f436f5fcfaeb5ebdc665bcce6fbf543b68283bd7d8b567a64913f8a6f1f0a', 2, 1, 'auth_token', '[]', 0, '2024-12-10 19:38:59', '2024-12-10 19:38:59', '2025-12-11 02:38:59'),
('8332112813dd30b33294fc9c94d119300e5adce9c519a8eb0591dd77876fe454c2ad5da83222fb9a', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:48:40', '2024-12-10 15:48:40', '2025-12-10 22:48:40'),
('83e8f3b6f5b16cdcd901c22487b6f062dd64777b81c591775eaecf2000499388b9d358306572c090', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:58:11', '2024-12-10 17:58:11', '2025-12-11 00:58:11'),
('84c152144f61e6a5c970fd77ec43a0c5e9e4901662b67b51eba60a15639c445ce74d26c0c3dd5814', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:24:16', '2024-12-10 18:24:16', '2025-12-11 01:24:16'),
('8508c32a58daad2300d46739345d3b3d3e5d740dce3ad0de9c740deeb71ad6c4ad7a49a4364e5f45', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:29:51', '2024-12-10 14:29:51', '2025-12-10 21:29:51'),
('85e446d83bc8fca417ba8b3dc1fa6b71ba1eea2703ead56d86f70a613d07a21e559729612f3cad14', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:03:18', '2024-12-10 17:03:18', '2025-12-11 00:03:18'),
('88d7890612b26114662134b8beb40520fa4398b8bad6c237d6a6c5e007bcbdcf03609e72fe9722e3', 2, 1, 'auth_token', '[]', 0, '2024-12-11 03:03:11', '2024-12-11 03:03:11', '2025-12-11 10:03:11'),
('8974ad8d33c8d319e3678e5c92b82499636d05e657d732794baf3f42aa39e15b5b570ba416b23ec6', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:25:04', '2024-12-10 15:25:04', '2025-12-10 22:25:04'),
('89828f37ee5f03c4465c347fb0cb133346d990d42892438325be10fb4c348169dd7d538fc8037371', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:07:47', '2024-12-10 18:07:47', '2025-12-11 01:07:47'),
('8b6b048a0de092e4426430d33ddc7f9df0ac68c6611ee1a262919473644b075b7549bacb22a10b4c', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:54:47', '2024-12-10 16:54:47', '2025-12-10 23:54:47'),
('8c1426cb76b326d0fbf760db68cd25a59685be62e46ed202af92cdc3b2e59a97e63cbd16a46bca4a', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:45:44', '2024-12-10 16:45:44', '2025-12-10 23:45:44'),
('8c159a9669a83a28b7d19cb256c3465c93eb855aab5c3ae77bbb3a6b00bb3efe9a9ffb2b5e6dbb0f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:16:04', '2024-12-10 14:16:05', '2025-12-10 21:16:04'),
('8c532cd60398f3c6d65ac08b791a9ef5e3b52732a3463a9aacce96407d15923114f3c619ec3e3367', 3, 1, 'auth_token', '[]', 0, '2024-12-10 17:29:38', '2024-12-10 17:29:38', '2025-12-11 00:29:38'),
('8c68defc9d4c84d6bee6efc71c657001e8bc818f6f835f1e64cc9a14c948c688e3c123e85ee8d7d7', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:43:46', '2024-12-10 14:43:46', '2025-12-10 21:43:46'),
('8cfd03a2edc204005cc02046eb8cd3b863b6934f5d6b5cb44dd30fa2d018058c4cd6515e09b952fe', 3, 1, 'auth_token', '[]', 0, '2024-12-10 17:29:22', '2024-12-10 17:29:22', '2025-12-11 00:29:22'),
('8d2fe042aa452352c819b54dd7f1ddf1ac42a292203c69b89980999c5227d594aeb901e777e06709', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:49:02', '2024-12-10 13:49:02', '2025-12-10 20:49:02'),
('8db8cbadc68452a6c49a6c5f6deca2a8b79ed7c9e24595b3eb84fdb19788bfb7fc648d3153c897e7', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:42:30', '2024-12-10 16:42:30', '2025-12-10 23:42:30'),
('8e4ce387967d41231b7e8f7f7555b83dc360b49219b87cef2c94dccab32f65d5f84bd2ca11c230f5', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:04:52', '2024-12-10 17:04:52', '2025-12-11 00:04:52'),
('8e736ca771799f25505e7678ace47ebd85a3ae4966e50de706693956cd416ab37295fbb0d34f6c70', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:06', '2024-12-10 17:24:06', '2025-12-11 00:24:06'),
('8f080e75c0c41678386349f5a56fec2c57982884c15d201df42a3aa5af0b3310916ffaf38cb199c1', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:03:02', '2024-12-10 15:03:02', '2025-12-10 22:03:02'),
('907be791b9a182eb4e91dcfe271aec04a9d853e12361d1a5e30c63df8c36252b6c0d6bc02ef4b6be', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:10:12', '2024-12-10 14:10:12', '2025-12-10 21:10:12'),
('90a32ce79172bff1da51979bd13c97e9ab83963374657f15f662d8d96d35f65c928e8cedfa2d2463', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:39:30', '2024-12-10 14:39:30', '2025-12-10 21:39:30'),
('90c9cc0293e33993193eda8ba9b2ba2f8c9dd86a23b3249464400c1909f7b4e5d1cee48fe01b9be5', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:06:57', '2024-12-10 16:06:57', '2025-12-10 23:06:57'),
('91ad311f2e56ece45660a92b07da2351716d7031c447c38a261ce328232139b2c06203ebbe9f940b', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:44:09', '2024-12-10 14:44:09', '2025-12-10 21:44:09'),
('91b65b05dfbadd54008bc5a0aea1cc6f09d4545ae7112f39de4c73ff6708b1e14404af93a9992265', 2, 1, 'auth_token', '[]', 0, '2024-12-11 23:13:40', '2024-12-11 23:13:40', '2025-12-12 06:13:40'),
('920bf78721f5861b7a5f15e8d8aeee0e3a745db6b8b42ed827b80cecc5ed6f9b51b34788a39f14a5', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:43:28', '2024-12-10 17:43:28', '2025-12-11 00:43:28'),
('922ef5f5d593d9cd9eb9f49b06ec4a6faad55197d73b1b01e620921ac4ca16755bcc32be425e5a1a', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:39:11', '2024-12-10 14:39:11', '2025-12-10 21:39:11'),
('934dde4be8f51c55f033b244f48cb491496b590d6cd1ab49dba055214939bfd56149b1af3aea907d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:07:44', '2024-12-10 18:07:44', '2025-12-11 01:07:44'),
('9539f830d252632e9880fcc42759a7f1f6174d7e68c29a285336170c54ef7db245145184873d1352', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:23:15', '2024-12-10 16:23:15', '2025-12-10 23:23:15'),
('9607eabc1e3af3df05811cf1ccb2748e055bbd373520cc17317d1489fdde44eb8397bdb854da8618', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:42:27', '2024-12-10 16:42:27', '2025-12-10 23:42:27'),
('9661db934ecb7ab6d5ecc98226190139224db94e4107e3fb3a3b267049f400d0922739abe5caba13', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:41:50', '2024-12-10 17:41:50', '2025-12-11 00:41:50'),
('9725753fe3868457a67ae56838cf30a2b4a77b35fc5555f72e63cc5b122ea6ca0d11f4680acbf60b', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:10:42', '2024-12-10 15:10:42', '2025-12-10 22:10:42'),
('97d6264b59bc84d402390a03dbc31f58977ddb73268c8f515fae67a32ad9fe95cce4d28b89670115', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:26:22', '2024-12-10 18:26:22', '2025-12-11 01:26:22'),
('97ef9cf42d6b8354550cc8584b0afa665588df8141ca39cac3b8df76ad9c9763757a7c899ecadb0b', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:26:22', '2024-12-10 15:26:22', '2025-12-10 22:26:22'),
('981471b960fa0b20bf02a7380598e6bd8a3289385b9bcc52523c05ec228ca268de1616f6a5d6aec7', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:32:32', '2024-12-10 14:32:32', '2025-12-10 21:32:32'),
('9861c55c1bfe8f2ed728264dda909db08e47803eff16398a13fa98c7063abb41bd48051d4dc8562a', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:06:09', '2024-12-10 14:06:09', '2025-12-10 21:06:09'),
('987386d0f0802828711b7035d62e9f1fe092d24af7ae4e57c9e58eb84ab8b823bfc57dfe0f46c6ba', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:55:42', '2024-12-10 13:55:42', '2025-12-10 20:55:42'),
('98bbcd1912b11470d3cb3acec9f34c75c7aab2efd587a741518aacff9e06a12892b1e5da62a82fa9', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:12:41', '2024-12-10 15:12:41', '2025-12-10 22:12:41'),
('994451e092dbeab8915c43ead7808b1a6817e7d250a0f4c9feab46c459f4eebebcafb777d698510a', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:48:44', '2024-12-10 15:48:44', '2025-12-10 22:48:44'),
('9a04e897f8e829dfd7771919ebecb836c71305ab9aee3dfd019cfb7d49f416b413d4a0366637cb4e', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:09:16', '2024-12-10 18:09:16', '2025-12-11 01:09:16'),
('9bb7ba199a95a0051cf17837be0e5f64ff0faae6cfc805d7fe1fce366d94fc6ac149ad8952b6b8d5', 2, 1, 'auth_token', '[]', 0, '2024-12-11 08:14:35', '2024-12-11 08:14:35', '2025-12-11 15:14:35'),
('9bc1b001006b0423056e09dc6f84017177f3164f31f272fac2822e9e12481e3b2b165a01dafc03df', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:12:11', '2024-12-10 16:12:11', '2025-12-10 23:12:11'),
('9cb1d2fbc1e1ca8886d2ce8efe1b863d53604f578e1f42836938eca12c61277502b0169e4a248be7', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:40:31', '2024-12-10 13:40:31', '2025-12-10 20:40:31'),
('9d71c73fcd9af3e909cffd8e7635ee0fbf25818d8d859f6e69e19cefa75afa026f7d97744d446e16', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:26:57', '2024-12-10 18:26:57', '2025-12-11 01:26:57'),
('9dbe4d569a0df0117d287a720b2f8feb7016d590489a08d58c58862b0bf2a6a412fba49a8d833ba6', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:07:39', '2024-12-10 18:07:39', '2025-12-11 01:07:39'),
('a2d8b5a1b905ba897b149dd7eb66c930992b962ee9ce7d3a1202737566040d732209ae5ce99ec3d4', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:08:10', '2024-12-10 16:08:10', '2025-12-10 23:08:10'),
('a2eb92d9c1a3e2d4d1fa5ea18f4ce23bdeecb98c57cea3fcddd97df3fca428824eafa0fae109eb70', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:57:24', '2024-12-11 07:57:24', '2025-12-11 14:57:24'),
('a3483e9cebba7986f30124710f7970227cadb110c89c86e095b98faa557d5192716f122b3f013656', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:48:17', '2024-12-10 13:48:17', '2025-12-10 20:48:17'),
('a4895381101930e41e9c5c2710db21f3a1de202b5562fcf647e37b795308f0deeb8535cd876c0d73', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:27:55', '2024-12-10 15:27:55', '2025-12-10 22:27:55'),
('a4bbbb3090b7c7d8f3a9c99b4d495038aa34edb26dae39fac281dde0dc989de4849961b28a7e91cc', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:58:51', '2024-12-11 07:58:51', '2025-12-11 14:58:51'),
('a5e83290e310b93991d52859ee0c8ab8af2225563537911a0c66d2e949bcaf3a58fe8bea605bf1c0', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:09:51', '2024-12-10 14:09:51', '2025-12-10 21:09:51'),
('a7407a567d44df8b316261e17cc9d7d4fc3543b2b663276b57ba26c8a4f8c289fcbce23fbf21f354', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:58:07', '2024-12-10 17:58:07', '2025-12-11 00:58:07'),
('a9364af6ff729e561a58e8232afdf86a2fb4663ac492078fe8075e232789a06226f79b1c7b2359ea', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:48:16', '2024-12-10 13:48:17', '2025-12-10 20:48:16'),
('a9bc49eea2221bfaca9d3eae3da7957811e679bbbab4b40b39f08f195c071c27ce8f3f0a2269d6a1', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:12:48', '2024-12-10 16:12:48', '2025-12-10 23:12:48'),
('aad9a79c75ace20ecc042ea6dbd96983621e518aee5798f5d81b3a75f0f0717876e4e35cb462ef46', 2, 1, 'auth_token', '[]', 0, '2024-12-10 19:39:23', '2024-12-10 19:39:23', '2025-12-11 02:39:23'),
('ab3ecbf1354290880610dee964066aacbf5f1ca666e2078f56ab6fcd37c60287a00bd83c28592902', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:29:37', '2024-12-10 14:29:37', '2025-12-10 21:29:37'),
('ab49eb454b5a3d5b41f539ffd8d1fb4f58b61fc79a56e7423b2c9a27f309adae6178d810771ff2a8', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:23:25', '2024-12-10 18:23:25', '2025-12-11 01:23:25'),
('ac5cde919008a9f39510cb8c67dc46482a536c5ae28daed7204402a9835f999656da0b65140b9782', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:44:37', '2024-12-10 13:44:37', '2025-12-10 20:44:37'),
('acd8d04a750e9cf2323266bf9923d78a09d667bc7e91237dee1cb4064de7a2bfe2c45cd6e0869a9c', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:35:27', '2024-12-10 16:35:27', '2025-12-10 23:35:27'),
('ad03c85b21842458c9bf0b66bb1553c01dc77067dc233b4e348d7e77491559380b0e6ad16734b6fd', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:29:49', '2024-12-10 14:29:49', '2025-12-10 21:29:49'),
('ad4456c87ac5ec7f9011ef96605dae01a9723b2cf584a0d2464c3abe8b3679a898fa8472b06754ba', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:27:57', '2024-12-10 15:27:57', '2025-12-10 22:27:57'),
('ad59b798c19e74b9fba92f3f8db481c9171944803b42921acad1806325597d4f5f01d835cc5d1053', 2, 1, 'auth_token', '[]', 0, '2024-12-11 23:15:59', '2024-12-11 23:15:59', '2025-12-12 06:15:59'),
('adbafcf731ac281f7cc42a3c34ba1841f32e2a651617107866b4bcc6f0035361cc2e352f26c9ba71', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:32:27', '2024-12-10 14:32:27', '2025-12-10 21:32:27'),
('ade639b490a99ff7aaad33f5284e3c004043a677cb46b6c687d1320d665fbe0baf0064bd63b21d44', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:48:10', '2024-12-10 13:48:10', '2025-12-10 20:48:10'),
('ae599889c3f7c00e5d30ac960067ff5e44a960cb3c453c4b226f06c2715cedeb98b03c2d602f8f10', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:02:50', '2024-12-10 15:02:50', '2025-12-10 22:02:50'),
('b031d68f14a862fb1df4f3eab6a60c0b698450c3a93f059804e18577b537309030a9b1e5a0ca5670', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:16:09', '2024-12-10 14:16:09', '2025-12-10 21:16:09'),
('b142c624cf7cb35b7c66d07c48ccb5eb4cf23684434562153b3f87f88801c781f42145be576b752d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:13:33', '2024-12-10 14:13:33', '2025-12-10 21:13:33'),
('b1499c0d08fce614a12662fe4a7522eac1be2231c1cddb4269f546dc34ca5dda657bc7112f471bfd', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:44:25', '2024-12-10 13:44:25', '2025-12-10 20:44:25'),
('b3d92937474aec441ba2572c2cd89d49df0787e655689faa4f87d33a113366471c575fa8adda2042', 2, 1, 'auth_token', '[]', 0, '2024-12-09 22:19:53', '2024-12-09 22:19:53', '2025-12-10 05:19:53'),
('b447bf5b941cbf7c6c6a714b0119581baa51b5465ba0c7d7fee24880e2c8ce7b71298c5662859454', 2, 1, 'auth_token', '[]', 0, '2024-12-11 08:12:19', '2024-12-11 08:12:19', '2025-12-11 15:12:19'),
('b5999365bbe9d9cf81dbd64a653f69fb5446ad1dbf4d5a71b360a0544ebe8822f099da66671472e3', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:04:41', '2024-12-10 17:04:41', '2025-12-11 00:04:41'),
('b84f90b7160c88b4d0a82e89e6af891f4c8b5b19446049b0be9d34d920b22fe264bede75242499de', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:28:20', '2024-12-10 14:28:20', '2025-12-10 21:28:20'),
('ba329b1bb8f0b560fda3f397b15b2295df0fc395d184a73a03e1759c04e92e820f79a2c61df4f762', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:46:33', '2024-12-10 13:46:33', '2025-12-10 20:46:33'),
('ba426e80d660d9b2646c07a8c5d87648a0bd058ea3a37758c19288951a37fe24503ea71522f7f878', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:45', '2024-12-10 17:24:45', '2025-12-11 00:24:45'),
('bb6c8294d81b72cb86f5dd6d5baac2322f71377dd0db2fc90460fdd41ac201a290990083e2f3879e', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:16:05', '2024-12-10 14:16:05', '2025-12-10 21:16:05'),
('bb8c18b647c772f16f3748ca73958e8f3100ef1a94eb3ef385eb789809466f3043ddd56bd1024217', 2, 1, 'auth_token', '[]', 0, '2024-12-11 08:21:00', '2024-12-11 08:21:00', '2025-12-11 15:21:00'),
('bc69d03a2539aa4278fe45c0f361e486c874d49fd99faff3f5b273a05335a7fe4047932745fa2233', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:05:18', '2024-12-10 17:05:18', '2025-12-11 00:05:18'),
('bcfe62ed7236a55952fdd12760ef3f9bcf9b0d89545db801ec1384f672771c893a7416c1a5ec30f5', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:43:57', '2024-12-10 14:43:57', '2025-12-10 21:43:57'),
('bda0ec6667b6e1a7de63dc46688a61a1c1438b10fae2fd3f794d5b86cf6ea89efa56b97b1bdfacbe', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:43:47', '2024-12-10 14:43:47', '2025-12-10 21:43:47'),
('be4a054738701333edf932238d6bee2a13fbf6431daff665b3b7c2abb87ffdf0a7299a06d43c06b5', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:42:04', '2024-12-10 17:42:04', '2025-12-11 00:42:04');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('beaa0be192adabe295731f61dc01c26af1100b3d78448b00ab8f24d98c8d214fc1948aad3facd12d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:04:56', '2024-12-10 18:04:56', '2025-12-11 01:04:56'),
('bf64162b097626dae86f9d97c188489363a5f4fa0ec36239de5dfbccd359caa676fbfc6508ae5a83', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:56:48', '2024-12-11 07:56:48', '2025-12-11 14:56:48'),
('c036f8f32f408c4948bc587bc365e560e759fc19546566857d686a0461aa6106f6d19c5a13e17014', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:05:27', '2024-12-10 18:05:27', '2025-12-11 01:05:27'),
('c2279c95dbaa99494739ac9ef938e35661d34fada6bf0f7ab25334214b0085e1886c321c463be957', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:16:05', '2024-12-10 14:16:05', '2025-12-10 21:16:05'),
('c2ba60f6bae064e1b0e1ef6e7f9bcf3cb1b850cbc8b46f2cd04b294737ad2d5482b34536c537d8fc', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:55:59', '2024-12-10 16:55:59', '2025-12-10 23:55:59'),
('c30d070208c0e7ad683029273ffacf0b59439d8324722c6b9a79f625945d0bf4c9eeb476e8324852', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:12:29', '2024-12-10 15:12:29', '2025-12-10 22:12:29'),
('c33c999d9b176f48971342508824c34f5efc447b324a1ed6a07a485b6cb259bb9fc8962a2892857b', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:47:04', '2024-12-10 14:47:04', '2025-12-10 21:47:04'),
('c404b9f0fd7b672a1a996d3dc1459b0d94ae5cf67609e1d47e3e24304fa319ba02d22424e32bd04f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:40:55', '2024-12-10 13:40:55', '2025-12-10 20:40:55'),
('c4abeb2f0c84feeb1e8c7962f913c75052202ca3f368641c151502239a0b1fbb6674284ce2730e34', 3, 1, 'auth_token', '[]', 0, '2024-12-10 17:30:24', '2024-12-10 17:30:24', '2025-12-11 00:30:24'),
('c55340dc1d142f17ee9c04b26cd359cb908535b0b08918b57b49faa2b6e5864ed6c5266b64b10ad6', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:29:48', '2024-12-10 14:29:48', '2025-12-10 21:29:48'),
('c67233ff5306d314da582d6ba867ad709d41e65a866c54a1bf13672c18bafb9bef12aeb731be4ca8', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:40:37', '2024-12-10 17:40:37', '2025-12-11 00:40:37'),
('c702ea6e56ab620864e007eb3d86006b40ac65e35de817e2cabf639d5ffd5b3fc94c32501ed6e907', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:44', '2024-12-10 17:24:45', '2025-12-11 00:24:44'),
('c7594d681ac10b2c1ff369a02c4cefdc7d321f06706d0d00e2a2f53f47fc87518121b00db3a948c6', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:48:44', '2024-12-10 13:48:44', '2025-12-10 20:48:44'),
('c7c5c47463f8b3f67f7e0947b887bd6b6dd34fb2cce308cb5f11836e82166f90f11dcfe0f2f7045d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:58:08', '2024-12-10 13:58:08', '2025-12-10 20:58:08'),
('c81f67a6b9e448f599306622ce1f141ac8afe3865722b1afab7265ee33f4f50b766d9ea3de0ec219', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:13:40', '2024-12-10 14:13:40', '2025-12-10 21:13:40'),
('c901fa07bb7b5a570b728a0a80d2c0d3bb3c0eb4039f6a267eb059a74def8b157cba00f36b423639', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:31:40', '2024-12-10 16:31:41', '2025-12-10 23:31:40'),
('c98ef0c18be84fa625e0cdc7d636590772e0de9c650aee60127c70a95ed7494237f41281efafa56d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:08:22', '2024-12-10 14:08:22', '2025-12-10 21:08:22'),
('cafc98e346fdd58c9d096ff1e54af55deb7f636caa023f53c812f32f6f66e81b0907d532f60e505a', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:12:32', '2024-12-10 15:12:32', '2025-12-10 22:12:32'),
('cb40acc697ac5423697c53ed25d761c68cfc6f6cf218ec1f0abe698b0340ff05d4c7e5282a2994a9', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:20:10', '2024-12-10 15:20:10', '2025-12-10 22:20:10'),
('cbb36f42674fe5e46723c4c7532128fd72962df2ce714fc36856cf4b20aded6769eac73f6610a4b7', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:57:29', '2024-12-11 07:57:29', '2025-12-11 14:57:29'),
('cbd371830941203aaea57df8d068e53af12de929502314a62d19b714296a698ece9e748b0219132d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:42:55', '2024-12-10 17:42:55', '2025-12-11 00:42:55'),
('cc8dc2978a0e74faaf3814ee4ff3d8ac596b134a04e2dc564f0780024b9665e3e7caa19e2e787b6c', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:47:11', '2024-12-10 14:47:11', '2025-12-10 21:47:11'),
('ce8c8973b05845137289df651d4652009dd9d8917d0305aa5e62980e4a17e6a4ca30fcd6648f7930', 2, 1, 'auth_token', '[]', 0, '2024-12-10 19:40:57', '2024-12-10 19:40:57', '2025-12-11 02:40:57'),
('ce9233d47917b570a0f9a78e40604b4502af0bca0929e89c249c881de452bf4e08ac02c070b08ee2', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:43:53', '2024-12-10 14:43:53', '2025-12-10 21:43:53'),
('cecbaa7e881342dfef1737778cda92e005a49cd7e6db01b123093ffea5bc0f6473613aa5665f2724', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:43:49', '2024-12-10 14:43:49', '2025-12-10 21:43:49'),
('cefa7b573c3b09e0b8ebdcba72a36dab80258120c9b71a367d45044b7578c7f1fb949528b1c7ff5d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:52:51', '2024-12-10 13:52:51', '2025-12-10 20:52:51'),
('cf55557561ff1cefd8bfa1ab6b4e0ea21377909aab7272b6014cba18f8a35f6fb95384ce47f44c84', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:44:06', '2024-12-10 14:44:07', '2025-12-10 21:44:06'),
('d028d22cef2f63c3fa81ad459a883edf1d920a7bfba6ddabac2293b4ab4025a32da594bf57539fb8', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:57:41', '2024-12-11 07:57:41', '2025-12-11 14:57:41'),
('d0448723370df03e5fa5c8c59bd5238a890c513dad014967c04324c46f1facf251e9905810ae1e10', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:39:19', '2024-12-10 13:39:19', '2025-12-10 20:39:19'),
('d0a8d4330d0ea7933e0619a4198580e59b022efeccb48795f10a99a81deaaa92e0bfc5adbe2930bd', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:26:29', '2024-12-10 17:26:29', '2025-12-11 00:26:29'),
('d1c95507c5992082c88887713b3d80c825f7e04b43cfc13f01d8d60ef3603ecaec7fcc430a1bffbd', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:08:51', '2024-12-10 18:08:51', '2025-12-11 01:08:51'),
('d24ded1d8d84e8d19e0a4056e9d0b8f16d299aa2f2625835518ddf2d030a0c1b07f42c0903f830e4', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:42:27', '2024-12-10 16:42:27', '2025-12-10 23:42:27'),
('d2bc4fef936afdd54effc7c2ed85f8a14a356dbba79c713f7608445a11fa5b029c4ccc5d1f6f8100', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:44:18', '2024-12-10 13:44:18', '2025-12-10 20:44:18'),
('d318a1104564a1874193349e693726f64ab0a981a423c46cd9070b9055ab871b4a668976f993c716', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:20:07', '2024-12-10 16:20:07', '2025-12-10 23:20:07'),
('d3803d17f21bb0ab6e6d46efa4b6301b5738f3bd1dca05866de01c5ec1750fea6413d481c9057fd0', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:44:21', '2024-12-10 13:44:21', '2025-12-10 20:44:21'),
('d430b319cf843953f9970195fd5f89c2f1863d34123a249a2d86c8183692d5ddccbeb43efd692c40', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:03:16', '2024-12-10 18:03:16', '2025-12-11 01:03:16'),
('d4bc5c0d5c7ff94749d8029824bd6519087dadbdb4ba676a6da866424ae0673ee32732c0cd8f8cac', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:55:43', '2024-12-10 13:55:43', '2025-12-10 20:55:43'),
('d5701a7621b7e27eed029d19ac5e79e87d1dea0de14c494379ca11531958099ed72b1a5a77d72fae', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:37:30', '2024-12-10 13:37:30', '2025-12-10 20:37:30'),
('d635935cb23bda48741b79be26187db2c4d2c3a1e5bd1936e92663ae5882e8fb2a01fb791edf93c8', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:56:26', '2024-12-10 13:56:26', '2025-12-10 20:56:26'),
('d7e8cdf9087d8c901b5a20b74dcf0ce40a8700fd4c4125927c6ae1875ec1daebffc8834588febb06', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:48:54', '2024-12-10 15:48:54', '2025-12-10 22:48:54'),
('d83001dd06e0530a785aaea015ba75052fdd82b828e6c01bd3f4d85d95ac864ddf06aa910d0bbe61', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:42:48', '2024-12-10 13:42:48', '2025-12-10 20:42:48'),
('da1e4a34b3adb40971f090e733b752bb1d48e460ef48b66eb3e8ebf6727629cfe5ba839b7b1fc08f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:42:59', '2024-12-10 13:42:59', '2025-12-10 20:42:59'),
('da53e5c55a1e04ac00d217695215ed9a7a2e37e7eb5aee140b9656a8b4e953c8d3ead62204f835d7', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:44', '2024-12-10 17:24:44', '2025-12-11 00:24:44'),
('dadcda9ab00f1483fa71b0b0cc963ed4f1e068146413c8b2358de273c7a2e22d9047d6a1eef4a89b', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:35:29', '2024-12-10 18:35:29', '2025-12-11 01:35:29'),
('dafa51427991ac96d16ea8dee860c77e177f10cd7a6c492a28daa9b9f444bf8339cc2d4ac8a56e7d', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:20:28', '2024-12-10 15:20:28', '2025-12-10 22:20:28'),
('dc37be729bec4a47f3ec606588a33af8be571ec65d19da4cf9463130ff1dc2d42b47e99fee056d55', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:07:39', '2024-12-10 18:07:39', '2025-12-11 01:07:39'),
('dc6be4d4a017edab81f82b6235b8cc34f84f19d0b141461bb31a5e06aa41ef97eb26d26ca2630120', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:08:47', '2024-12-10 14:08:47', '2025-12-10 21:08:47'),
('dc740a655701deabe997ee2825c733594c6bd789ba1fa872235c22b180b0c8ce4d8b6bf4b8f889cc', 3, 1, 'auth_token', '[]', 0, '2024-12-10 17:29:04', '2024-12-10 17:29:04', '2025-12-11 00:29:04'),
('dce6270e919a5c159329378af29f7be0586e80bbb54340f8a4e6179ffd04d5340ad1b110ca277f0c', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:46:22', '2024-12-10 13:46:22', '2025-12-10 20:46:22'),
('dd7273c5634061be4458409bcad9d549ffcb9dd5a88b4efbe313dcf3701a3651332bde77387be4b4', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:16:11', '2024-12-10 14:16:11', '2025-12-10 21:16:11'),
('de7a4e31fb91412bab5157ff633c5b3bebb081e78bdaa9aebb2f230e7218d8383808754345350d7c', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:43:24', '2024-12-10 15:43:24', '2025-12-10 22:43:24'),
('deb300d6dd63a04c42ff8fa2deb66a33962ab04023879d83b50dc702484ef4aa44daf7cd5da573d6', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:49:08', '2024-12-10 13:49:08', '2025-12-10 20:49:08'),
('df5be0f62dd449c0b324eac05a900b2c28251fe4ae7b95f27716cd7e73e832e228f07060f58305d2', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:49:04', '2024-12-10 13:49:04', '2025-12-10 20:49:04'),
('e12c200f80ca49fb0fb55e7d7666626f352a34e9cbc5fb71b473f226d6320ee099fe644ecd655742', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:03:14', '2024-12-10 18:03:14', '2025-12-11 01:03:14'),
('e1c5aed5488d3cc08a4284d7e1850f75c9888fdff0eabf0fc526c699bcb4a5d40ae54bb15c63b5aa', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:12:37', '2024-12-10 14:12:37', '2025-12-10 21:12:37'),
('e1de45dde9f864a2548fffa8f33da24e86dbc4e83252a30a8a45a552aff7be744586ae99825f1c21', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:42:52', '2024-12-10 13:42:52', '2025-12-10 20:42:52'),
('e1e8a4d75c6bd3beb1c296a8af51bf4a292d0dbc5b25cfbe47c1a185c00876b4de6731586effdf21', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:16:41', '2024-12-10 18:16:41', '2025-12-11 01:16:41'),
('e2b13b5b8a4b797ecda197edf438207c45e96bac5e45c145b3cb945ce4fee0f71c9813419505d658', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:37:02', '2024-12-10 13:37:02', '2025-12-10 20:37:02'),
('e355abc3e7968356cd65e2e1a338e53d6f8152ebf90447335c1acdab66ff42f7e9f72ddaa7ea462e', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:07:48', '2024-12-10 18:07:48', '2025-12-11 01:07:48'),
('e3eeaa85fe859a5066c3604f58a9c97172d8f8fb363fed07804f0383346a82f930103b33ef351853', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:07:43', '2024-12-10 18:07:43', '2025-12-11 01:07:43'),
('e3fac3ccc00a08345013abe0cf1ce1887cf9915d5bb9d4ac9a8df5f8fb792d554cc6713645c37557', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:04:13', '2024-12-10 17:04:13', '2025-12-11 00:04:13'),
('e40d5188726f0ebf287654f4bfce7a302d8061fe852582240841f19cceb787d3444f81ba7cf10672', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:59:22', '2024-12-10 16:59:22', '2025-12-10 23:59:22'),
('e4194cbc389a936893c118495f3d9d37100fbff20a1789b569b278ff4101a559e50ab397659956f8', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:42:23', '2024-12-10 14:42:23', '2025-12-10 21:42:23'),
('e44c92c70b8a6ad68683df0d2d22abdc13580dabf1e49f282799d19446e48b90a1ab7b226c2e2d2e', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:42:52', '2024-12-10 13:42:52', '2025-12-10 20:42:52'),
('e6538dfeeb5c6ce498b9a3372504a1eb42a25f2a196f0b2513c92a1dd076b1263f97461cd17026c8', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:26:30', '2024-12-10 15:26:30', '2025-12-10 22:26:30'),
('e677fbff7d668f72b533f0439f61feb8ee2058ba8d41408eca0833bf9b4d61efddb5f335100af61f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:35:39', '2024-12-10 16:35:39', '2025-12-10 23:35:39'),
('e6879ab0c2b6b8eddbe0fd948f6c3a4eb50f0307b239cc596b3383bf64aebf44f2ddbd8f73c2809e', 3, 1, 'auth_token', '[]', 0, '2024-12-10 16:06:41', '2024-12-10 16:06:41', '2025-12-10 23:06:41'),
('e9c407c0541277fed8865f6d02543df80117ec34b32103344e4b444559066e43b4ac4be7e7f2742c', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:27:10', '2024-12-10 17:27:10', '2025-12-11 00:27:10'),
('f0033b09263f3b5f5cdbf653f4e8da078b6e27fce0c37a66471b3b829784ccf9cb81eb077e0ffb8f', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:33:16', '2024-12-10 14:33:16', '2025-12-10 21:33:16'),
('f02c0b02b8631a9805692b38b44e34cb14de2cca1c8cbd487cc2d6431084e8aae2170a07cda1b877', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:45:22', '2024-12-10 16:45:22', '2025-12-10 23:45:22'),
('f0afaa62343b891228d8eadc413223177986fe0e53b22fad43d8fd18ce9002cc01ad7cad1884a9c3', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:05:55', '2024-12-10 17:05:55', '2025-12-11 00:05:55'),
('f0c8aad4b7602bf977c80bf1a2a4ec11497890069805460f610a7c83cb4e6988dff0a2654135b6a2', 2, 1, 'auth_token', '[]', 0, '2024-12-10 19:38:42', '2024-12-10 19:38:42', '2025-12-11 02:38:42'),
('f183857f832ae0facd0c62ef86e519b8bd45346099845f458de55361b2ec047c8d4a151c127fa024', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:29:09', '2024-12-10 16:29:09', '2025-12-10 23:29:09'),
('f283173dc6e3e12ea73f1b889e8f98133964b7e9fb5d84b208d329b163b2d24f10f1d33de83ba87c', 2, 1, 'auth_token', '[]', 0, '2024-12-11 08:20:55', '2024-12-11 08:20:55', '2025-12-11 15:20:55'),
('f41a25d7ddac61c08dbc4f25376e8102725d1a29750d0f6cc33c3e6e9ddfa1c1819b339cc26edd56', 2, 1, 'auth_token', '[]', 0, '2024-12-10 15:44:01', '2024-12-10 15:44:01', '2025-12-10 22:44:01'),
('f482562539a42bc401c89d8977157be9df519df260418a8a69e81dd484a0847ef6328d4115c51d37', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:41', '2024-12-10 17:24:41', '2025-12-11 00:24:41'),
('f5a0797b3a9c1f56b8b0fdb65d55aa78d1924cd0f1f94a8075664e33cf11077fa3ddcc3e23014b8e', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:02:42', '2024-12-10 15:02:42', '2025-12-10 22:02:42'),
('f84cae422bdbca975e543f8f7801cc3aeab30ae7a697ad0ef82efa5852979413e3ed185897426949', 2, 1, 'auth_token', '[]', 0, '2024-12-10 18:03:12', '2024-12-10 18:03:12', '2025-12-11 01:03:12'),
('f85b66d5ca902069bc357de992d991470b7e0e960711251884363bdf6704a859aadd11d705325914', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:00:13', '2024-12-10 15:00:13', '2025-12-10 22:00:13'),
('f8dd10b458758ad365bfc9ae204e37978969bde6fb90eae8b6f27d594758ada9f2e00d96a6f7e1e4', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:24:40', '2024-12-10 17:24:40', '2025-12-11 00:24:40'),
('f8ee85bef0808cae332e644e8ce67f2b303976756616d18fb6a4cfc8934f18f7212c0b6f48e4f2fc', 2, 1, 'auth_token', '[]', 0, '2024-12-11 07:54:01', '2024-12-11 07:54:01', '2025-12-11 14:54:01'),
('fa7bf4f4db901065f7cf482abdd33f23a7b725860aab2cdba8b39cec2dc6d2a79d8cd02ae6478d4e', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:56:50', '2024-12-10 13:56:50', '2025-12-10 20:56:50'),
('fa8561c46ff3bb986e49107af6c2a04441a37d811eec6ac6a523ba4913219aa44886ffd86e37a537', 3, 1, 'auth_token', '[]', 0, '2024-12-10 15:39:32', '2024-12-10 15:39:32', '2025-12-10 22:39:32'),
('faf1b955e7b7e033100b0c6fac10ca45525f8a8939dd034212805dff75fbfd9d16c72918d7bf1ce1', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:06:02', '2024-12-10 14:06:02', '2025-12-10 21:06:02'),
('fbc77cc1dbd0af8bb56070a7495ae38623f1d5eadc89955236899eabcc92b41d9ce0b4c3943ec9d0', 2, 1, 'auth_token', '[]', 0, '2024-12-10 16:33:35', '2024-12-10 16:33:35', '2025-12-10 23:33:35'),
('fc7f219d07fe58fa48e71b6b664a4b1137d52f24a79e393652bc92001c743438bf36b9061ed89a03', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:55:47', '2024-12-10 13:55:47', '2025-12-10 20:55:47'),
('fcfe5da0de9291ce01e8846226863a4adfb1697c4e65f1cb83c527d1bce0b1ae662da40b35119ff3', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:12:35', '2024-12-10 14:12:35', '2025-12-10 21:12:35'),
('fd2e6cb9b15d2b80d5fff3b35007f3f10fe15a338bd7a5d25dd31270a072843cae254d02156a8d5c', 3, 1, 'auth_token', '[]', 0, '2024-12-10 14:43:02', '2024-12-10 14:43:02', '2025-12-10 21:43:02'),
('fd5f44428bb6259a5f73e143057712da121b3a0aa0535ebebaa5f4f7c18d186c2c48b0b0ba51670e', 2, 1, 'auth_token', '[]', 0, '2024-12-10 14:14:15', '2024-12-10 14:14:15', '2025-12-10 21:14:15'),
('fe26b8a618a848b5d8e068300fdb377713e0c8597ac60797a96908cfe66ae1f5f70707044da1cd7d', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:40:54', '2024-12-10 13:40:54', '2025-12-10 20:40:54'),
('feb5decaf966a2a42567e57b154104dfbb8714a19a39066623c793dfdb92809eff5ef15a58714e25', 2, 1, 'auth_token', '[]', 0, '2024-12-10 17:41:34', '2024-12-10 17:41:34', '2025-12-11 00:41:34'),
('ff64ce6483c9d35dcec437393ac20285cc041342a71f4d1c9a9b675594758da56512cdc1c1023af2', 2, 1, 'auth_token', '[]', 0, '2024-12-10 13:44:40', '2024-12-10 13:44:40', '2025-12-10 20:44:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'API Auth', 'egeGgQ85wW280Q1kahdLWKIIFbHLtUYSLIDCNuzg', NULL, 'http://localhost', 1, 0, 0, '2024-12-09 22:19:49', '2024-12-09 22:19:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-12-09 22:19:49', '2024-12-09 22:19:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('bennitampu@gmail.com', '$2y$12$Tc1/dj6cmCBgpAW.l2K/guM6ON/B4RvWzufBQZB26D6eaJ1hYSIyK', '2024-12-11 03:29:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LcZqF0ELy8qaJhyzlPvmVClDxlE3HPNVNnxFAHfZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjh2NW42Z1VJVEhNS3IzT3pNd21VUUdnR0EyQWJMUDZJN0Rzb3FKYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1733984280);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Benni Tampubolon', 'bennitampu@gmail.com', NULL, '$2y$12$eVL9tck3qdCAC/Mo/qOB1OJX48Q5FIuq.7ccq61vqdpmhuj0p5qXe', NULL, '2024-12-09 11:59:39', '2024-12-09 11:59:39'),
(2, 'Benni Tampubolon', 'bennitampubolon0@gmail.com', NULL, '$2y$12$BTJ2pe0/zyKIRhkWVxEO6uo.noVvR3rOgK89iE/tWKb6r3BDhe9Da', 'rioWDX0QabDj8yKBZGAbL2Xo6yBTzAql0za07oBmMUhRk4qDqseCmPCwwo3W', '2024-12-09 19:28:33', '2024-12-10 10:58:06'),
(3, 'Benni Hasahatan Tampubolon', 'ce321053@students.del.ac.id', NULL, '$2y$12$3F9zEIAQzfzMfNJAFIDWcOZkfZC7ZDNAKruqJyb3mDoOTkwO3CBmi', NULL, '2024-12-10 09:45:32', '2024-12-10 09:45:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article_reseps`
--
ALTER TABLE `article_reseps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `article_reseps`
--
ALTER TABLE `article_reseps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `article_reseps`
--
ALTER TABLE `article_reseps`
  ADD CONSTRAINT `article_reseps_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_reseps_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
