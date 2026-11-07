.class public Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Launcher"
.end annotation


# instance fields
.field private mainClass:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V
    .locals 4

    .line 1186
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Text cannot be null"

    .line 1187
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 p1, 0x3d

    .line 1189
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const-string v0, "Launcher command must take the form name=module or name=module/mainclass"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/4 v2, 0x0

    .line 1194
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->setName(Ljava/lang/String;)V

    const/16 v2, 0x2f

    .line 1196
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_0

    add-int/2addr p1, v1

    .line 1198
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->setModule(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/2addr p1, v1

    if-le v2, p1, :cond_1

    .line 1199
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 1200
    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->setModule(Ljava/lang/String;)V

    add-int/2addr v2, v1

    .line 1201
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->setMainClass(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1203
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1191
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMainClass()Ljava/lang/String;
    .locals 1

    .line 1258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->mainClass:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 1237
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1216
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setMainClass(Ljava/lang/String;)V
    .locals 0

    .line 1269
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->mainClass:Ljava/lang/String;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    .line 1247
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1227
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1297
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->mainClass:Ljava/lang/String;

    const-string v1, "="

    if-eqz v0, :cond_0

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->mainClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 3

    .line 1278
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1282
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->module:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1283
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1284
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "Launcher must have specify a module"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 1279
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$Launcher;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1280
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "Launcher must have a name"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method
