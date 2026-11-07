.class public Lorg/apache/tools/ant/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPermissions(Ljava/util/Set;Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v0, 0x1

    and-long v2, p2, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_EXECUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v0, 0x2

    and-long v2, p2, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_WRITE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x4

    and-long/2addr p2, v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_READ"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static getPermissions(Lorg/apache/tools/ant/types/Resource;Ljava/util/function/Function;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/util/function/Function<",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v0, :cond_1

    .line 157
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    .line 158
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 159
    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    .line 163
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    .line 165
    :cond_1
    instance-of p1, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    if-eqz p1, :cond_2

    .line 166
    check-cast p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getMode()I

    move-result p0

    invoke-static {p0}, Lorg/apache/tools/ant/util/PermissionUtils;->permissionsFromMode(I)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 168
    :cond_2
    const-class p0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static modeFromPermissions(Ljava/util/Set;Lorg/apache/tools/ant/util/PermissionUtils$FileType;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Lorg/apache/tools/ant/util/PermissionUtils$FileType;",
            ")I"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$1;->$SwitchMap$org$apache$tools$ant$util$PermissionUtils$FileType:[I

    invoke-virtual {p1}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    :goto_0
    shl-int/2addr p1, v1

    shl-int/2addr p1, v1

    int-to-long v2, p1

    const-string p1, "OWNER"

    .line 73
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/PermissionUtils;->modeFromPermissions(Ljava/util/Set;Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    long-to-int p1, v2

    shl-int/2addr p1, v1

    int-to-long v2, p1

    const-string p1, "GROUP"

    .line 75
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/PermissionUtils;->modeFromPermissions(Ljava/util/Set;Ljava/lang/String;)J

    move-result-wide v4

    or-long/2addr v2, v4

    long-to-int p1, v2

    shl-int/2addr p1, v1

    int-to-long v0, p1

    const-string p1, "OTHERS"

    .line 77
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/PermissionUtils;->modeFromPermissions(Ljava/util/Set;Ljava/lang/String;)J

    move-result-wide p0

    or-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static modeFromPermissions(Ljava/util/Set;Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_READ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 177
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_WRITE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 180
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "_EXECUTE"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 p0, 0x1

    or-long/2addr v0, p0

    :cond_2
    return-wide v0
.end method

.method public static permissionsFromMode(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .line 88
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "OTHERS"

    int-to-long v2, p0

    .line 89
    invoke-static {v0, v1, v2, v3}, Lorg/apache/tools/ant/util/PermissionUtils;->addPermissions(Ljava/util/Set;Ljava/lang/String;J)V

    shr-int/lit8 v1, p0, 0x3

    int-to-long v1, v1

    const-string v3, "GROUP"

    .line 90
    invoke-static {v0, v3, v1, v2}, Lorg/apache/tools/ant/util/PermissionUtils;->addPermissions(Ljava/util/Set;Ljava/lang/String;J)V

    shr-int/lit8 p0, p0, 0x6

    int-to-long v1, p0

    const-string p0, "OWNER"

    .line 91
    invoke-static {v0, p0, v1, v2}, Lorg/apache/tools/ant/util/PermissionUtils;->addPermissions(Ljava/util/Set;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static setPermissions(Lorg/apache/tools/ant/types/Resource;Ljava/util/Set;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v0, :cond_1

    .line 118
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    .line 119
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 120
    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 124
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_1
    instance-of p2, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    if-eqz p2, :cond_2

    .line 127
    move-object p2, p0

    check-cast p2, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    .line 128
    invoke-static {p0}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->of(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    move-result-object p0

    .line 127
    invoke-static {p1, p0}, Lorg/apache/tools/ant/util/PermissionUtils;->modeFromPermissions(Ljava/util/Set;Lorg/apache/tools/ant/util/PermissionUtils$FileType;)I

    move-result p0

    invoke-virtual {p2, p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->setMode(I)V

    :cond_2
    :goto_0
    return-void
.end method
