.class public Lorg/apache/tools/ant/types/selectors/OwnedBySelector;
.super Ljava/lang/Object;
.source "OwnedBySelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# instance fields
.field private followSymlinks:Z

.field private owner:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->followSymlinks:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 64
    iget-object p1, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->owner:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 69
    :try_start_0
    iget-boolean p2, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->followSymlinks:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array p3, p1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, p3}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p2

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array p3, v0, [Ljava/nio/file/LinkOption;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v1, p3, p1

    invoke-static {p2, p3}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 71
    iget-object p3, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->owner:Ljava/lang/String;

    invoke-interface {p2}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    move p1, v0

    :catch_0
    :cond_1
    return p1

    .line 65
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "the owner attribute is required"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFollowSymlinks(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->followSymlinks:Z

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->owner:Ljava/lang/String;

    return-void
.end method
