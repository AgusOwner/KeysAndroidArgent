.class public abstract Lorg/apache/tools/ant/types/resources/ResourceDecorator;
.super Lorg/apache/tools/ant/types/Resource;
.source "ResourceDecorator.java"


# instance fields
.field private resource:Lorg/apache/tools/ant/types/Resource;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method


# virtual methods
.method public final addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->checkChildrenAllowed()V

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_1

    .line 65
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->setChecked(Z)V

    .line 70
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    return-void

    .line 66
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only single argument resource collections are supported"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "you must not specify more than one resource"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/tools/ant/types/Resource;)I
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 184
    :cond_0
    instance-of v0, p1, Lorg/apache/tools/ant/types/resources/ResourceDecorator;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    check-cast p1, Lorg/apache/tools/ant/types/resources/ResourceDecorator;

    .line 186
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object p1

    .line 185
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1

    .line 188
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/Resource;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    const/4 p1, 0x1

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 99
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected final getResource()Lorg/apache/tools/ant/types/Resource;
    .locals 2

    .line 207
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-class v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    return-object v0

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->dieOnCircularReference()V

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    return-object v0

    .line 211
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "no resource specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()J
    .locals 2

    .line 118
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isExists()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    return v0
.end method

.method public isFilesystemOnly()Z
    .locals 1

    .line 153
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDirectory(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 275
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "you can\'t change the directory state of a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExists(Z)V
    .locals 2

    .line 253
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "you can\'t change the exists state of a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLastModified(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 264
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "you can\'t change the timestamp of a "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 243
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "you can\'t change the name of a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->resource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_0

    .line 165
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setSize(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 286
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "you can\'t change the size of a "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ResourceDecorator;->getDataTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
