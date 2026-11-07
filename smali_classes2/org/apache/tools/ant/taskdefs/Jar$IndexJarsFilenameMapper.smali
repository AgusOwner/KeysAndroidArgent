.class Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;
.super Ljava/lang/Object;
.source "Jar.java"

# interfaces
.implements Lorg/apache/tools/ant/util/FileNameMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Jar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexJarsFilenameMapper"
.end annotation


# instance fields
.field private classpath:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;->classpath:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1246
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Jar$IndexJarsFilenameMapper;->classpath:[Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/tools/ant/taskdefs/Jar;->findJarName(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1247
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
