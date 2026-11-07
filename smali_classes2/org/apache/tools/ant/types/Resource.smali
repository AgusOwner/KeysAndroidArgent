.class public Lorg/apache/tools/ant/types/Resource;
.super Lorg/apache/tools/ant/types/DataType;
.source "Resource.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/tools/ant/types/DataType;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;",
        "Lorg/apache/tools/ant/types/ResourceCollection;"
    }
.end annotation


# static fields
.field protected static final MAGIC:I

.field private static final NULL_NAME:I

.field public static final UNKNOWN_DATETIME:J = 0x0L

.field public static final UNKNOWN_SIZE:J = -0x1L


# instance fields
.field private directory:Ljava/lang/Boolean;

.field private exists:Ljava/lang/Boolean;

.field private lastmodified:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private size:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Resource"

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/Resource;->MAGIC:I

    const-string v0, "null name"

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/Resource;->NULL_NAME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    .line 66
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 84
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;ZJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 96
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;ZJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJZ)V
    .locals 8

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    .line 109
    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;ZJZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJZJ)V
    .locals 1

    .line 122
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    .line 66
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    .line 123
    iput-object p1, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/Resource;->setExists(Z)V

    .line 126
    invoke-virtual {p0, p3, p4}, Lorg/apache/tools/ant/types/Resource;->setLastModified(J)V

    .line 127
    invoke-virtual {p0, p5}, Lorg/apache/tools/ant/types/Resource;->setDirectory(Z)V

    .line 128
    invoke-virtual {p0, p6, p7}, Lorg/apache/tools/ant/types/Resource;->setSize(J)V

    return-void
.end method

.method protected static getMagicNumber([B)I
    .locals 1

    .line 60
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
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

    .line 438
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public asOptional(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 449
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 261
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 263
    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CloneNotSupportedException for a Resource caught. Derived classes must support cloning."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/tools/ant/types/Resource;)I
    .locals 1

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    return p1

    .line 280
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    .line 298
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLastModified()J
    .locals 5

    .line 189
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    return-wide v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 458
    const-class v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    return-wide v0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v0

    return v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 312
    sget v1, Lorg/apache/tools/ant/types/Resource;->MAGIC:I

    if-nez v0, :cond_1

    sget v0, Lorg/apache/tools/ant/types/Resource;->NULL_NAME:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/2addr v1, v0

    return v1
.end method

.method public isDirectory()Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExists()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFilesystemOnly()Z
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isFilesystemOnly()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 376
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setDirectory(Z)V
    .locals 0

    .line 225
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    if-eqz p1, :cond_0

    .line 226
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    return-void
.end method

.method public setExists(Z)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    if-eqz p1, :cond_0

    .line 175
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    .line 205
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 418
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 416
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public setSize(J)V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    .line 236
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    return-void
.end method

.method public size()I
    .locals 1

    .line 365
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final toLongString()Ljava/lang/String;
    .locals 2

    .line 401
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "(anonymous)"

    :cond_1
    return-object v0
.end method
