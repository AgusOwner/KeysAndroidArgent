.class public Lorg/apache/tools/ant/taskdefs/Redirector;
.super Ljava/lang/Object;
.source "Redirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String;

.field private static final STREAMPUMPER_WAIT_INTERVAL:I = 0x3e8


# instance fields
.field private alwaysLogErr:Z

.field private alwaysLogOut:Z

.field private appendErr:Z

.field private appendOut:Z

.field private appendProperties:Z

.field private baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

.field private createEmptyFilesErr:Z

.field private createEmptyFilesOut:Z

.field private discardErr:Z

.field private discardOut:Z

.field private final errMutex:Ljava/lang/Object;

.field private error:[Ljava/io/File;

.field private errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

.field private errorEncoding:Ljava/lang/String;

.field private errorFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private errorPrintStream:Ljava/io/PrintStream;

.field private errorProperty:Ljava/lang/String;

.field private errorStream:Ljava/io/OutputStream;

.field private final inMutex:Ljava/lang/Object;

.field private input:[Ljava/io/File;

.field private inputEncoding:Ljava/lang/String;

.field private inputFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;

.field private inputString:Ljava/lang/String;

.field private logError:Z

.field private logInputString:Z

.field private final managingTask:Lorg/apache/tools/ant/ProjectComponent;

.field private out:[Ljava/io/File;

.field private final outMutex:Ljava/lang/Object;

.field private outPrintStream:Ljava/io/PrintStream;

.field private outputEncoding:Ljava/lang/String;

.field private outputFilterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private outputIsBinary:Z

.field private outputProperty:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field private final threadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "file.encoding"

    .line 63
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Redirector;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/ProjectComponent;)V
    .locals 4

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logError:Z

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 118
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 130
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    .line 132
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendErr:Z

    .line 135
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogOut:Z

    .line 137
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogErr:Z

    const/4 v2, 0x1

    .line 140
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesOut:Z

    .line 142
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesErr:Z

    .line 148
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 151
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 154
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    .line 157
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    .line 160
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    .line 172
    sget-object v1, Lorg/apache/tools/ant/taskdefs/Redirector;->DEFAULT_ENCODING:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputEncoding:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorEncoding:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    .line 181
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendProperties:Z

    .line 184
    new-instance v1, Ljava/lang/ThreadGroup;

    const-string v3, "redirector"

    invoke-direct {v1, v3}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    .line 187
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logInputString:Z

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    .line 193
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    .line 199
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputIsBinary:Z

    .line 202
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardOut:Z

    .line 204
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardErr:Z

    .line 224
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;-><init>(Lorg/apache/tools/ant/ProjectComponent;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Redirector;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/Redirector;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    return p0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/Redirector;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendProperties:Z

    return p0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Redirector;->setPropertyFromBAOS(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method private errorStreams()V
    .locals 9

    .line 769
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 770
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardErr:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 771
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logError:Z

    if-nez v0, :cond_1

    .line 775
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    const-string v1, "Discarding error output"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 776
    sget-object v0, Lorg/apache/tools/ant/util/NullOutputStream;->INSTANCE:Lorg/apache/tools/ant/util/NullOutputStream;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    return-void

    .line 772
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cant discard error output when error, errorProperty or logError are set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v0, :cond_4

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendErr:Z

    if-eqz v1, :cond_3

    const-string v1, "appended"

    goto :goto_1

    :cond_3
    const-string v1, "redirected"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 782
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    const/4 v6, 0x3

    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendErr:Z

    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesErr:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/tools/ant/taskdefs/Redirector;->foldFiles([Ljava/io/File;Ljava/lang/String;IZZ)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    goto :goto_2

    .line 784
    :cond_4
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logError:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 786
    new-instance v0, Lorg/apache/tools/ant/util/OutputStreamFunneler;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/tools/ant/util/OutputStreamFunneler;-><init>(Ljava/io/OutputStream;J)V

    .line 789
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->getFunnelInstance()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 790
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->getFunnelInstance()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 791
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputIsBinary:Z

    if-nez v0, :cond_5

    .line 792
    new-instance v0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 793
    new-instance v0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 796
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "error splitting output/error streams"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 800
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 801
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    if-nez v0, :cond_6

    .line 802
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 803
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error redirected to property: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 807
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/util/KeepAliveOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/KeepAliveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 808
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-nez v1, :cond_7

    goto :goto_3

    .line 809
    :cond_7
    new-instance v1, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v0, v1

    :cond_8
    :goto_3
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    :goto_4
    return-void
.end method

.method private foldFiles([Ljava/io/File;Ljava/lang/String;IZZ)Ljava/io/OutputStream;
    .locals 6

    .line 1043
    new-instance v0, Lorg/apache/tools/ant/util/LazyFileOutputStream;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-direct {v0, v2, p4, p5}, Lorg/apache/tools/ant/util/LazyFileOutputStream;-><init>(Ljava/io/File;ZZ)V

    .line 1046
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, p1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 1047
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-array p2, p2, [C

    const/16 v1, 0x20

    .line 1048
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 1049
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    const/4 p2, 0x1

    .line 1051
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_0

    .line 1052
    new-instance v2, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    new-instance v4, Lorg/apache/tools/ant/util/LazyFileOutputStream;

    aget-object v5, p1, p2

    invoke-direct {v4, v5, p4, p5}, Lorg/apache/tools/ant/util/LazyFileOutputStream;-><init>(Ljava/io/File;ZZ)V

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 1054
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private outStreams()V
    .locals 9

    .line 737
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->out:[Ljava/io/File;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 738
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardOut:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 739
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 743
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    const-string v1, "Discarding output"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 744
    sget-object v0, Lorg/apache/tools/ant/util/NullOutputStream;->INSTANCE:Lorg/apache/tools/ant/util/NullOutputStream;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    return-void

    .line 740
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cant discard output when output or outputProperty are set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v0, :cond_4

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Output "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 749
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    if-eqz v1, :cond_3

    const-string v1, "appended"

    goto :goto_1

    :cond_3
    const-string v1, "redirected"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 750
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->out:[Ljava/io/File;

    const/4 v6, 0x3

    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    iget-boolean v8, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesOut:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/tools/ant/taskdefs/Redirector;->foldFiles([Ljava/io/File;Ljava/lang/String;IZZ)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 753
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 754
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    if-nez v0, :cond_5

    .line 755
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/Redirector;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 756
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Output redirected to property: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 760
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/util/KeepAliveOutputStream;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/KeepAliveOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 761
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_6

    goto :goto_2

    .line 762
    :cond_6
    new-instance v1, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    :goto_3
    return-void
.end method

.method private setPropertyFromBAOS(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .line 595
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Execute;->toString(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 596
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {p1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    .line 597
    invoke-virtual {v0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 596
    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 967
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 968
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 970
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 971
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 972
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 974
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 976
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 977
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 978
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 979
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 981
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 983
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 984
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 987
    monitor-enter p0

    .line 988
    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 990
    :try_start_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Threads:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 992
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Thread;

    .line 993
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v4, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_2

    .line 994
    aget-object v5, v2, v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_2

    .line 996
    :try_start_5
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v5}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x3e8

    .line 1002
    :try_start_6
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    .line 1004
    :catch_1
    :try_start_7
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Thread;

    .line 1005
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    :goto_2
    if-ge v0, v1, :cond_1

    .line 1006
    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    .line 1007
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1011
    :cond_3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1013
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->setProperties()V

    .line 1015
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1016
    :try_start_8
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    .line 1017
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1018
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1019
    :try_start_9
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 1020
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    .line 1021
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1022
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_a
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 1024
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    .line 1025
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 1021
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 1017
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    .line 1011
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 984
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v1

    :catchall_5
    move-exception v0

    .line 979
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0

    :catchall_6
    move-exception v1

    .line 974
    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v1
.end method

.method public createHandler()Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 825
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->createStreams()V

    .line 826
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 827
    :goto_0
    new-instance v1, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getErrorStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 828
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Z)V

    return-object v1
.end method

.method public createStreams()V
    .locals 10

    const-string v0, "Redirecting input from file"

    .line 606
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->outStreams()V

    .line 608
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogOut:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_2

    .line 609
    :cond_0
    new-instance v2, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    .line 611
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    if-nez v3, :cond_1

    goto :goto_0

    .line 612
    :cond_1
    new-instance v3, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v3, v2, v4}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 615
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputFilterChains:Ljava/util/Vector;

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputEncoding:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    .line 616
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_6

    .line 618
    :cond_4
    :try_start_1
    new-instance v2, Lorg/apache/tools/ant/util/LeadPipeInputStream;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/LeadPipeInputStream;-><init>()V

    .line 619
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 623
    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    invoke-direct {v5, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 626
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputFilterChains:Ljava/util/Vector;

    if-eqz v6, :cond_5

    .line 627
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 628
    new-instance v6, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v6}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 629
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v7}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 630
    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 631
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputFilterChains:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 632
    invoke-virtual {v6}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v5

    .line 634
    :cond_5
    new-instance v6, Lorg/apache/tools/ant/util/ReaderInputStream;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputEncoding:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 636
    new-instance v5, Ljava/lang/Thread;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    new-instance v8, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v8, v6, v9, v4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    const-string v6, "output pumper"

    invoke-direct {v5, v7, v8, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 638
    invoke-virtual {v5, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 639
    new-instance v6, Ljava/io/PipedOutputStream;

    invoke-direct {v6, v2}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    .line 640
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 642
    :try_start_2
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "error setting up output stream"

    invoke-direct {v2, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 646
    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 648
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 649
    :try_start_3
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStreams()V

    .line 650
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogErr:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    if-nez v1, :cond_9

    .line 651
    :cond_7
    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-direct {v1, v5, v4}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    .line 653
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    if-nez v5, :cond_8

    goto :goto_2

    .line 654
    :cond_8
    new-instance v5, Lorg/apache/tools/ant/util/TeeOutputStream;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v5, v1, v6}, Lorg/apache/tools/ant/util/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v1, v5

    :goto_2
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 657
    :cond_9
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorFilterChains:Ljava/util/Vector;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorEncoding:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    .line 658
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_d

    .line 660
    :cond_b
    :try_start_4
    new-instance v1, Lorg/apache/tools/ant/util/LeadPipeInputStream;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/LeadPipeInputStream;-><init>()V

    .line 661
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    .line 665
    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    invoke-direct {v5, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 668
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorFilterChains:Ljava/util/Vector;

    if-eqz v6, :cond_c

    .line 669
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 670
    new-instance v6, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v6}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 671
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v7}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 672
    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 673
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorFilterChains:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 674
    invoke-virtual {v6}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v5

    .line 676
    :cond_c
    new-instance v6, Lorg/apache/tools/ant/util/ReaderInputStream;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorEncoding:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 678
    new-instance v5, Ljava/lang/Thread;

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->threadGroup:Ljava/lang/ThreadGroup;

    new-instance v8, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v8, v6, v9, v4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    const-string v6, "error pumper"

    invoke-direct {v5, v7, v8, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v5, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 681
    new-instance v3, Ljava/io/PipedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    .line 682
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 684
    :try_start_5
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v3, "error setting up error stream"

    invoke-direct {v1, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 688
    :cond_d
    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 690
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 695
    :try_start_6
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    const/4 v3, 0x3

    if-eqz v2, :cond_f

    array-length v2, v2

    if-lez v2, :cond_f

    .line 696
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    .line 698
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    array-length v5, v5

    if-ne v5, v4, :cond_e

    const-string v4, ""

    goto :goto_4

    :cond_e
    const-string v4, "s"

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-virtual {v2, v0, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 701
    :try_start_7
    new-instance v0, Lorg/apache/tools/ant/util/ConcatFileInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/util/ConcatFileInputStream;-><init>([Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 705
    :try_start_8
    move-object v2, v0

    check-cast v2, Lorg/apache/tools/ant/util/ConcatFileInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    goto :goto_6

    :catch_2
    move-exception v0

    .line 703
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 706
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Using input "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logInputString:Z

    if-eqz v2, :cond_10

    const/16 v2, 0x22

    .line 709
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    const-string v2, "string"

    .line 711
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :goto_5
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    .line 714
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    .line 717
    :cond_11
    :goto_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputFilterChains:Ljava/util/Vector;

    if-eqz v0, :cond_12

    .line 718
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 719
    new-instance v0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;-><init>()V

    .line 720
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v2}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 722
    :try_start_9
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 728
    :try_start_a
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputFilterChains:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 729
    new-instance v2, Lorg/apache/tools/ant/util/ReaderInputStream;

    .line 730
    invoke-virtual {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/apache/tools/ant/util/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    goto :goto_7

    :catch_3
    move-exception v0

    .line 725
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "error setting up input stream"

    invoke-direct {v2, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 732
    :cond_12
    :goto_7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 688
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 646
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0
.end method

.method public getErrorStream()Ljava/io/OutputStream;
    .locals 2

    .line 939
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 941
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 951
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 953
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 927
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 928
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 929
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected handleErrorFlush(Ljava/lang/String;)V
    .locals 3

    .line 911
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    if-nez v1, :cond_0

    .line 913
    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    .line 915
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 916
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 917
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handleErrorOutput(Ljava/lang/String;)V
    .locals 3

    .line 896
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    if-nez v1, :cond_0

    .line 898
    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    .line 900
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 901
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handleFlush(Ljava/lang/String;)V
    .locals 3

    .line 880
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 881
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    if-nez v1, :cond_0

    .line 882
    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    .line 884
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 885
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 886
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handleInput([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 865
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->managingTask:Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/tools/ant/Project;->defaultInput([BII)I

    move-result p1

    monitor-exit v0

    return p1

    .line 868
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 870
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected handleOutput(Ljava/lang/String;)V
    .locals 3

    .line 838
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    if-nez v1, :cond_0

    .line 840
    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    .line 842
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outPrintStream:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 843
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAlwaysLog(Z)V
    .locals 2

    .line 495
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogOut:Z

    .line 497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->alwaysLogErr:Z

    .line 500
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 497
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setAppend(Z)V
    .locals 2

    .line 443
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendOut:Z

    .line 445
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 446
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendErr:Z

    .line 448
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 445
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setAppendProperties(Z)V
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->appendProperties:Z

    .line 389
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBinaryOutput(Z)V
    .locals 0

    .line 582
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputIsBinary:Z

    return-void
.end method

.method public setCreateEmptyFiles(Z)V
    .locals 2

    .line 511
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesOut:Z

    .line 513
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 514
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->createEmptyFilesErr:Z

    .line 516
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 513
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setDiscardError(Z)V
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardErr:Z

    .line 482
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDiscardOutput(Z)V
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->discardOut:Z

    .line 465
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setError(Ljava/io/File;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    move-object p1, v0

    .line 399
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setError([Ljava/io/File;)V

    return-void
.end method

.method public setError([Ljava/io/File;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 411
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->error:[Ljava/io/File;

    .line 415
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setErrorEncoding(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 344
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorEncoding:Ljava/lang/String;

    .line 346
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 342
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "errorEncoding must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorFilterChains(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorFilterChains:Ljava/util/Vector;

    .line 568
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setErrorProperty(Ljava/lang/String;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 527
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    .line 528
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorProperty:Ljava/lang/String;

    const/4 p1, 0x0

    .line 530
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 532
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInput(Ljava/io/File;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    move-object p1, v0

    .line 234
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setInput([Ljava/io/File;)V

    return-void
.end method

.method public setInput([Ljava/io/File;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 246
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->input:[Ljava/io/File;

    .line 250
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputEncoding:Ljava/lang/String;

    .line 361
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 357
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inputEncoding must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputFilterChains(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputFilterChains:Ljava/util/Vector;

    .line 544
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setInputStream(Ljava/io/InputStream;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputStream:Ljava/io/InputStream;

    .line 287
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInputString(Ljava/lang/String;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->inputString:Ljava/lang/String;

    .line 262
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLogError(Z)V
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logError:Z

    .line 375
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLogInputString(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->logInputString:Z

    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    move-object p1, v0

    .line 298
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Redirector;->setOutput([Ljava/io/File;)V

    return-void
.end method

.method public setOutput([Ljava/io/File;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 311
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->out:[Ljava/io/File;

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p1}, [Ljava/io/File;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/io/File;

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->out:[Ljava/io/File;

    .line 315
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputEncoding:Ljava/lang/String;

    .line 331
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "outputEncoding must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputFilterChains(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputFilterChains:Ljava/util/Vector;

    .line 556
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOutputProperty(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 425
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outputProperty:Ljava/lang/String;

    const/4 p1, 0x0

    .line 429
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    .line 430
    monitor-exit v0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setProperties()V
    .locals 2

    .line 1033
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->outMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->baos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1035
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1036
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1037
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Redirector;->errorBaos:Lorg/apache/tools/ant/taskdefs/Redirector$PropertyOutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 1038
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1035
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
