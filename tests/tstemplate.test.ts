import { tstemplate } from '../tstemplate';
import { describe, it, expect, beforeEach } from 'vitest';

const sleep = (ms: number) => new Promise(resolve => setTimeout(resolve, ms));

describe('tstemplate', () => {
    it('should construct', () => {
        const app = new tstemplate();
        expect(app).toBe(app);
    });
});
