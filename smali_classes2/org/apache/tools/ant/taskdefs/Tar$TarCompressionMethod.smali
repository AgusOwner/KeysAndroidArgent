.class public final Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Tar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Tar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TarCompressionMethod"
.end annotation


# static fields
.field private static final BZIP2:Ljava/lang/String; = "bzip2"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final XZ:Ljava/lang/String; = "xz"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 978
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    const-string v0, "none"

    .line 979
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method private compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    .line 1002
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1003
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    const-string v1, "xz"

    .line 1005
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1006
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Tar$TarCompressionMethod;->newXZOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "bzip2"

    .line 1008
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x42

    .line 1009
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x5a

    .line 1010
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1011
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;

    invoke-direct {v0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    :cond_2
    return-object p1
.end method

.method private static newXZOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    :try_start_0
    const-string v0, "org.tukaani.xz.FilterOptions"

    .line 1019
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "org.tukaani.xz.LZMA2Options"

    .line 1020
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "org.tukaani.xz.XZOutputStream"

    .line 1022
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/io/OutputStream;

    .line 1023
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1024
    const-class v5, Ljava/io/OutputStream;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 1025
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    new-array p0, v6, [Ljava/lang/Class;

    .line 1026
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 1035
    :goto_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "failed to create XZOutputStream"

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    .line 1028
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "xz compression requires the XZ for Java library"

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 4

    const-string v0, "bzip2"

    const-string v1, "xz"

    const-string v2, "none"

    const-string v3, "gzip"

    .line 988
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
