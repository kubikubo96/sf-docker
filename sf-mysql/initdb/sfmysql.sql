CREATE DATABASE IF NOT EXISTS sfmysql;

USE sfmysql;

CREATE TABLE users
(
    id          INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    full_name   VARCHAR(150) COLLATE utf8mb4_unicode_ci COMMENT 'Họ và tên',
    gender      TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Giới tính, 0: Nữ, 1: Nam',
    username    VARCHAR(100) COLLATE ascii_general_ci COMMENT 'Username',
    status      TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Trạng thái của tài khoản, 0: vô hiệu hoá, 1: đang hoạt động',
    role_id     INT UNSIGNED     NOT NULL DEFAULT 0 COMMENT 'Chức vụ, id của bảng roles',
    daily_wage  DECIMAL(20, 0)   NOT NULL DEFAULT 0 COMMENT 'Mức lương theo ngày',
    created_by  INT UNSIGNED     NOT NULL DEFAULT 0 COMMENT 'ID của người tạo, 0: Hệ thống',
    created_at  DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời gian tạo',
    modified_by INT UNSIGNED     NULL COMMENT 'ID của người cập nhật, 0: Hệ thống',
    modified_at DATETIME         NULL ON UPDATE CURRENT_TIMESTAMP
) COMMENT 'Dữ liệu Nhân viên' ENGINE = InnoDB DEFAULT CHARSET = ascii COLLATE = ascii_general_ci AUTO_INCREMENT = 1;