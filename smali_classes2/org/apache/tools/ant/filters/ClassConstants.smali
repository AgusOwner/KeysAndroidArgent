.class public final Lorg/apache/tools/ant/filters/ClassConstants;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "ClassConstants.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final JAVA_CLASS_HELPER:Ljava/lang/String; = "org.apache.tools.ant.filters.util.JavaClassHelper"


# instance fields
.field private queuedData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 151
    new-instance v0, Lorg/apache/tools/ant/filters/ClassConstants;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/ClassConstants;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-object v1, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ClassConstants;->readFully()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_0
    const-string v4, "org.apache.tools.ant.filters.util.JavaClassHelper"

    .line 102
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "getConstants"

    new-array v2, v2, [Ljava/lang/Class;

    .line 104
    const-class v6, [B

    aput-object v6, v2, v3

    .line 105
    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 108
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 109
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ClassConstants;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 119
    instance-of v1, v0, Ljava/lang/NoClassDefFoundError;

    if-nez v1, :cond_3

    .line 122
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 123
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 125
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 120
    :cond_3
    check-cast v0, Ljava/lang/NoClassDefFoundError;

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 116
    :goto_0
    throw v0

    :cond_4
    :goto_1
    const/4 v0, -0x1

    goto :goto_2

    .line 131
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 132
    iget-object v3, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    iput-object v1, p0, Lorg/apache/tools/ant/filters/ClassConstants;->queuedData:Ljava/lang/String;

    :cond_6
    :goto_2
    return v0
.end method
