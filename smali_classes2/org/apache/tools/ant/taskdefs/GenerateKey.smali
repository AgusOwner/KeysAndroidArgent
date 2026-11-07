.class public Lorg/apache/tools/ant/taskdefs/GenerateKey;
.super Lorg/apache/tools/ant/Task;
.source "GenerateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;,
        Lorg/apache/tools/ant/taskdefs/GenerateKey$DnameParam;
    }
.end annotation


# instance fields
.field protected alias:Ljava/lang/String;

.field protected dname:Ljava/lang/String;

.field protected expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

.field protected keyalg:Ljava/lang/String;

.field protected keypass:Ljava/lang/String;

.field protected keysize:I

.field protected keystore:Ljava/lang/String;

.field protected saname:Ljava/lang/String;

.field protected sigalg:Ljava/lang/String;

.field protected storepass:Ljava/lang/String;

.field protected storetype:Ljava/lang/String;

.field protected validity:I

.field protected verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public createDname()Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "It is not possible to specify dname  both as attribute and element."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "DName sub-element can only be specified once."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->alias:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 311
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 315
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "dname must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-genkey "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->verbose:Z

    if-eqz v1, :cond_2

    const-string v1, "-v "

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "-alias \""

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    const-string v3, "-dname \""

    if-eqz v2, :cond_3

    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    if-eqz v2, :cond_4

    .line 338
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keystore:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "-keystore \""

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keystore:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_5
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v2, "-storepass \""

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_6
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storetype:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v2, "-storetype \""

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storetype:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v2, "-keypass \""

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keypass:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 365
    :cond_8
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->sigalg:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v2, "-sigalg \""

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->sigalg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_9
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keyalg:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v2, "-keyalg \""

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keyalg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_a
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keysize:I

    if-lez v2, :cond_b

    const-string v2, "-keysize \""

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keysize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_b
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->validity:I

    if-lez v2, :cond_c

    const-string v2, "-validity \""

    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->validity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_c
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->saname:Ljava/lang/String;

    if-eqz v2, :cond_d

    const-string v2, "-ext \"san="

    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->saname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generating Key for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/GenerateKey;->log(Ljava/lang/String;)V

    .line 401
    new-instance v1, Lorg/apache/tools/ant/taskdefs/ExecTask;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/ExecTask;-><init>(Lorg/apache/tools/ant/Task;)V

    const-string v2, "keytool"

    .line 402
    invoke-static {v2}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setExecutable(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->createArg()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setLine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 405
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setFailonerror(Z)V

    .line 406
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/GenerateKey;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecTask;->setTaskName(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/ExecTask;->execute()V

    return-void

    .line 312
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "storepass attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "alias attribute must be set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->alias:Ljava/lang/String;

    return-void
.end method

.method public setDname(Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->expandedDname:Lorg/apache/tools/ant/taskdefs/GenerateKey$DistinguishedName;

    if-nez v0, :cond_0

    .line 188
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->dname:Ljava/lang/String;

    return-void

    .line 185
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "It is not possible to specify dname  both as attribute and element."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyalg(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keyalg:Ljava/lang/String;

    return-void
.end method

.method public setKeypass(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keypass:Ljava/lang/String;

    return-void
.end method

.method public setKeysize(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 272
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keysize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 274
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "KeySize attribute should be a integer"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->keystore:Ljava/lang/String;

    return-void
.end method

.method public setSaname(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->saname:Ljava/lang/String;

    return-void
.end method

.method public setSigalg(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->sigalg:Ljava/lang/String;

    return-void
.end method

.method public setStorepass(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storepass:Ljava/lang/String;

    return-void
.end method

.method public setStoretype(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->storetype:Ljava/lang/String;

    return-void
.end method

.method public setValidity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 286
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->validity:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 288
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Validity attribute should be a integer"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/GenerateKey;->verbose:Z

    return-void
.end method
