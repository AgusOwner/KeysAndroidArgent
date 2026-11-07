.class public Lorg/apache/tools/ant/taskdefs/Length;
.super Lorg/apache/tools/ant/Task;
.source "Length.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Length$FileMode;,
        Lorg/apache/tools/ant/taskdefs/Length$EachHandler;,
        Lorg/apache/tools/ant/taskdefs/Length$Handler;,
        Lorg/apache/tools/ant/taskdefs/Length$AllHandler;,
        Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;,
        Lorg/apache/tools/ant/taskdefs/Length$When;
    }
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "all"

.field private static final EACH:Ljava/lang/String; = "each"

.field private static final LENGTH_REQUIRED:Ljava/lang/String; = "Use of the Length condition requires that the length attribute be set."

.field private static final STRING:Ljava/lang/String; = "string"


# instance fields
.field private length:Ljava/lang/Long;

.field private mode:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field private resources:Lorg/apache/tools/ant/types/resources/Resources;

.field private string:Ljava/lang/String;

.field private trim:Ljava/lang/Boolean;

.field private when:Lorg/apache/tools/ant/types/Comparison;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, "all"

    .line 56
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->mode:Ljava/lang/String;

    .line 57
    sget-object v0, Lorg/apache/tools/ant/types/Comparison;->EQUAL:Lorg/apache/tools/ant/types/Comparison;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->when:Lorg/apache/tools/ant/types/Comparison;

    return-void
.end method

.method private static getLength(Ljava/lang/String;Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method private handleResources(Lorg/apache/tools/ant/taskdefs/Length$Handler;)V
    .locals 5

    .line 240
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 241
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " does not exist"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Length;->log(Ljava/lang/String;I)V

    .line 244
    :cond_0
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is a directory; length may not be meaningful"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Length;->log(Ljava/lang/String;I)V

    .line 247
    :cond_1
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/taskdefs/Length$Handler;->handle(Lorg/apache/tools/ant/types/Resource;)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Length$Handler;->complete()V

    return-void
.end method

.method private validate()V
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->string:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_1

    const-string v0, "string"

    .line 219
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Length;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the mode attribute is for use with the file/resource length function"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the string length function is incompatible with the file/resource length function"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    if-eqz v0, :cond_6

    const-string v0, "each"

    .line 224
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Length;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "all"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Length;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 225
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid mode setting for file/resource length function: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Length;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->trim:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    :goto_1
    return-void

    .line 230
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the trim attribute is for use with the string length function only"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "you must set either the string attribute or specify one or more files using the file attribute or nested resource collections"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized add(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 0

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Length;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 100
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    :cond_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    .line 103
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public eval()Z
    .locals 3

    .line 198
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Length;->validate()V

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->length:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const-string v0, "string"

    .line 203
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Length;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->string:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Length;->getTrim()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/Length;->getLength(Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;-><init>(Lorg/apache/tools/ant/taskdefs/Length;)V

    .line 207
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Length;->handleResources(Lorg/apache/tools/ant/taskdefs/Length$Handler;)V

    .line 208
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Length$AccumHandler;->getAccum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 210
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Length;->when:Lorg/apache/tools/ant/types/Comparison;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Length;->length:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Comparison;->evaluate(I)Z

    move-result v0

    return v0

    .line 200
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Use of the Length condition requires that the length attribute be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .locals 5

    .line 171
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Length;->validate()V

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->property:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/util/PropertyOutputStream;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Length;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Length;->property:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/util/PropertyOutputStream;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    .line 175
    :goto_0
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->mode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v1, v4

    goto :goto_2

    :sswitch_0
    const-string v3, "each"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :sswitch_1
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 183
    :pswitch_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Length$EachHandler;

    invoke-direct {v0, p0, v2}, Lorg/apache/tools/ant/taskdefs/Length$EachHandler;-><init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Length;->handleResources(Lorg/apache/tools/ant/taskdefs/Length$Handler;)V

    goto :goto_3

    .line 186
    :pswitch_1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Length$AllHandler;

    invoke-direct {v0, p0, v2}, Lorg/apache/tools/ant/taskdefs/Length$AllHandler;-><init>(Lorg/apache/tools/ant/taskdefs/Length;Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Length;->handleResources(Lorg/apache/tools/ant/taskdefs/Length$Handler;)V

    goto :goto_3

    .line 179
    :pswitch_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Length;->string:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Length;->getTrim()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/Length;->getLength(Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintStream;->print(J)V

    .line 180
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x352a9fef -> :sswitch_2
        0x179a1 -> :sswitch_1
        0x2f6201 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTrim()Z
    .locals 2

    .line 163
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Length;->trim:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setFile(Ljava/io/File;)V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Length;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLength(J)V
    .locals 0

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length;->length:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMode(Lorg/apache/tools/ant/taskdefs/Length$FileMode;)V
    .locals 0

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Length$FileMode;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length;->mode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 66
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length;->property:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setResource(Lorg/apache/tools/ant/types/Resource;)V
    .locals 0

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Length;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setString(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 146
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length;->string:Ljava/lang/String;

    const-string p1, "string"

    .line 147
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length;->mode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTrim(Z)V
    .locals 0

    monitor-enter p0

    .line 155
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length;->trim:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWhen(Lorg/apache/tools/ant/taskdefs/Length$When;)V
    .locals 0

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Length;->setWhen(Lorg/apache/tools/ant/types/Comparison;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWhen(Lorg/apache/tools/ant/types/Comparison;)V
    .locals 0

    monitor-enter p0

    .line 130
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Length;->when:Lorg/apache/tools/ant/types/Comparison;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
