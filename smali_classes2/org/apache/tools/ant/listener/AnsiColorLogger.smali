.class public Lorg/apache/tools/ant/listener/AnsiColorLogger;
.super Lorg/apache/tools/ant/DefaultLogger;
.source "AnsiColorLogger.java"


# static fields
.field private static final ATTR_DIM:I = 0x2

.field private static final END_COLOR:Ljava/lang/String; = "\u001b[m"

.field private static final FG_BLUE:I = 0x22

.field private static final FG_CYAN:I = 0x24

.field private static final FG_GREEN:I = 0x20

.field private static final FG_MAGENTA:I = 0x23

.field private static final FG_RED:I = 0x1f

.field private static final PREFIX:Ljava/lang/String; = "\u001b["

.field private static final SEPARATOR:C = ';'

.field private static final SUFFIX:Ljava/lang/String; = "m"


# instance fields
.field private colorsSet:Z

.field private debugColor:Ljava/lang/String;

.field private errColor:Ljava/lang/String;

.field private infoColor:Ljava/lang/String;

.field private verboseColor:Ljava/lang/String;

.field private warnColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    const-string v0, "\u001b[2;31m"

    .line 138
    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->errColor:Ljava/lang/String;

    const-string v0, "\u001b[2;35m"

    .line 140
    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->warnColor:Ljava/lang/String;

    const-string v0, "\u001b[2;36m"

    .line 142
    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->infoColor:Ljava/lang/String;

    const-string v0, "\u001b[2;32m"

    .line 144
    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->verboseColor:Ljava/lang/String;

    const-string v0, "\u001b[2;34m"

    .line 146
    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->debugColor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->colorsSet:Z

    return-void
.end method

.method private setColors()V
    .locals 9

    const-string v0, "ant.logger.defaults"

    .line 156
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/org/apache/tools/ant/listener/defaults.properties"

    const/4 v2, 0x0

    .line 163
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/String;

    .line 166
    invoke-static {v0, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_1
    const-string v0, "AnsiColorLogger.ERROR_COLOR"

    .line 175
    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnsiColorLogger.WARNING_COLOR"

    .line 176
    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "AnsiColorLogger.INFO_COLOR"

    .line 177
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AnsiColorLogger.VERBOSE_COLOR"

    .line 178
    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AnsiColorLogger.DEBUG_COLOR"

    .line 179
    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "m"

    const-string v7, "\u001b["

    if-eqz v0, :cond_2

    .line 181
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->errColor:Ljava/lang/String;

    :cond_2
    if-eqz v1, :cond_3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->warnColor:Ljava/lang/String;

    :cond_3
    if-eqz v4, :cond_4

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->infoColor:Ljava/lang/String;

    :cond_4
    if-eqz v5, :cond_5

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->verboseColor:Ljava/lang/String;

    :cond_5
    if-eqz v3, :cond_6

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->debugColor:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 198
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 199
    throw v0

    .line 198
    :catch_0
    :cond_6
    :goto_1
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected printMessage(Ljava/lang/String;Ljava/io/PrintStream;I)V
    .locals 3

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 211
    iget-boolean v0, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->colorsSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/apache/tools/ant/listener/AnsiColorLogger;->setColors()V

    .line 213
    iput-boolean v1, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->colorsSet:Z

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\u001b[m"

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    .line 237
    iget-object p3, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->debugColor:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_1
    iget-object p3, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->verboseColor:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :cond_2
    iget-object p3, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->infoColor:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    :cond_3
    iget-object p3, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->warnColor:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 219
    :cond_4
    iget-object p3, p0, Lorg/apache/tools/ant/listener/AnsiColorLogger;->errColor:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
