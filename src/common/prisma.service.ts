import { Inject, Injectable, OnModuleInit } from '@nestjs/common';
import { Prisma, PrismaClient } from '@prisma/client';
import { WINSTON_MODULE_PROVIDER } from 'nest-winston';
import { Logger } from 'winston';

@Injectable()
export class PrismaService
    extends PrismaClient<Prisma.PrismaClientOptions, string>
    implements OnModuleInit
{
    constructor(
        @Inject(WINSTON_MODULE_PROVIDER) private readonly logger: Logger
    ) {
        super({
            log: [
                { emit: 'event', level: 'info' },
                { emit: 'event', level: 'warn' },
                { emit: 'event', level: 'error' },
                { emit: 'event', level: 'query' },
            ],
        });
    }

    onModuleInit() {
        this.$on('query', (ev) => {
            this.logger.info(ev);
        });
        this.$on('info', (ev) => {
            this.logger.info(ev);
        });
        this.$on('warn', (ev) => {
            this.logger.info(ev);
        });
        this.$on('error', (ev) => {
            this.logger.info(ev);
        });
    }
}
