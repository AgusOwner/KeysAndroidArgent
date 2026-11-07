.class public Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;
.super Ljava/lang/Object;
.source "PosixPermissionsSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# instance fields
.field private followSymlinks:Z

.field private permissions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;->followSymlinks:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 74
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;->permissions:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 78
    :try_start_0
    iget-boolean p2, p0, Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;->followSymlinks:Z

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array p3, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, p3}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object p2

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/nio/file/LinkOption;

    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v0, p3, p1

    invoke-static {p2, p3}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object p2

    .line 78
    :goto_0
    invoke-static {p2}, Ljava/nio/file/attribute/PosixFilePermissions;->toString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;->permissions:Ljava/lang/String;

    .line 81
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1

    .line 75
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "the permissions attribute is required"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFollowSymlinks(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;->followSymlinks:Z

    return-void
.end method

.method public setPermissions(Ljava/lang/String;)V
    .locals 4

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "^[0-7]+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 52
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lorg/apache/tools/ant/util/PermissionUtils;->permissionsFromMode(I)Ljava/util/Set;

    move-result-object p1

    .line 51
    invoke-static {p1}, Ljava/nio/file/attribute/PosixFilePermissions;->toString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;->permissions:Ljava/lang/String;

    return-void

    .line 57
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermissions;->toString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PosixPermissionsSelector;->permissions:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the permissions attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " is invalid"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
